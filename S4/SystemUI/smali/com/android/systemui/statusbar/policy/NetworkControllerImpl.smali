.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    }
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_OFF:Ljava/lang/String; = "com.android.systemui.action.airplane_off"

.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field static final DEBUG:Z = true

.field private static final EVENT_CHANGE_FAKE_CALL_STATE:I = 0x47

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static final EXTRA_IS_VALID_PLMN:Ljava/lang/String; = "isValidPlmn"

.field protected static final INET_CONDITION_THRESHOLD:I = 0x32

.field private static final MCC_BRAZIL:Ljava/lang/String; = "724"

.field static final REQ_AIRPLANE_NOTIFICATION:I = 0x333

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field private static final ZVV_CARRIER_NAME:Ljava/lang/String; = "VIVO"

.field private static final ZVV_CARRIER_NAME_LENGTH:I = 0x4

.field protected static mAppopsStrictEnabled:Z

.field private static sCodeToState:Ljava/util/HashMap;
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


# instance fields
.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherDisconnected:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field private mCAIndicator:Z

.field private mCarrierText:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataRoamingTypeForVZW:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field protected mDataTypeBrand:Ljava/lang/String;

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeTMOstyle:Z

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoQSDataTypeIconId:I

.field private mDemoWifiLevel:I

.field mEmergencyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmgcCallState:Z

.field private mFakeSignalStrength:I

.field private final mHandler:Landroid/os/Handler;

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field protected mInetCondition:I

.field mIsCmccCard:Z

.field protected mIsWimaxEnabled:Z

.field private mKeepFakeDuration:I

.field private mKeepFakeState:Z

.field protected mLastAirplaneMode:Z

.field mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field protected mLastConnectedNetworkType:I

.field mLastDataDirectionIconId:I

.field mLastDataSignalIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field protected mLastInetCondition:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field mLastSglteMode:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field private mLastSpn:Ljava/lang/String;

.field mLastVoiceRadioState:I

.field mLastVoiceRegState:I

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field protected mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field private final mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

.field mMobileDataEnabled:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNoSim:Z

.field mNoSimIconId:I

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field protected mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSglteMode:I

.field mShow4GforLTE:Z

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field private mShowLAC:Z

.field mShowPhoneRSSIForData:Z

.field mShowRsrpSignalLevelforLTE:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field protected mVoiceCapable:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field protected mWimaxIdle:Z

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 3598
    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 300
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 116
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    .line 117
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 118
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    .line 119
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    .line 122
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 139
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 140
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 141
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 143
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 145
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 159
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 160
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 161
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move-object v3, v4

    .line 162
    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 165
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 166
    const v3, 0x10808cc

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 168
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 171
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 172
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 173
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 174
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 175
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 176
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 177
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 178
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 179
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 183
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 184
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 186
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 188
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    .line 189
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 192
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 193
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 195
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 196
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 198
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataSignalIconId:I

    .line 199
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSglteMode:I

    .line 200
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 210
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 211
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    .line 212
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    .line 213
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    .line 214
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    .line 215
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 216
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    .line 217
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    .line 221
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 222
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 226
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    .line 228
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    .line 229
    const/16 v3, 0x1b58

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 235
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    .line 238
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 241
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 242
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 243
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 244
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 245
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 246
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 247
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 251
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 254
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 262
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 974
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3561
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_UNKNOWN:I

    .line 3562
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_FALSE:I

    .line 3563
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    .line 3583
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 3584
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 3588
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 3592
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 3645
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 3647
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 3660
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 3955
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    .line 4019
    const v3, 0x7f02036c

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4020
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 4021
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 4022
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 4023
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    .line 4024
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 4110
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 4111
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 4112
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 305
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 307
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 309
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 311
    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 312
    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 313
    const v3, 0x112004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 315
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 317
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 325
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 327
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0d01f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x104037c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 332
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->createWifiHandler()V

    .line 339
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v3, :cond_1

    .line 362
    :cond_0
    const-string v3, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    :cond_1
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 372
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 376
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v3, :cond_3

    .line 377
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    :cond_3
    const-string v3, "USA"

    const-string v4, "ro.csc.country_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    const-string v3, "com.android.systemui.action.airplane_off"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    :cond_4
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 390
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 391
    new-instance v3, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    .line 392
    new-instance v3, Lcom/android/systemui/statusbar/policy/MobileDataController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/policy/MobileDataController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    .line 393
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setCallback(Lcom/android/systemui/statusbar/policy/MobileDataController$Callback;)V

    .line 401
    const v3, 0x1120045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$DataRoamingObserver;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarNetworkSettings()V

    .line 413
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    .line 415
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 417
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileDataObserver;

    const/4 v7, -0x2

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 422
    :cond_5
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$NWBoosterObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    return-void

    :cond_6
    move v3, v6

    .line 413
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreSvcSate:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2010(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mFakeSignalStrength:I

    return p1
.end method

.method private applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v4, 0x7f02038c

    const/4 v3, 0x2

    .line 4141
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyCHN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_0

    .line 4144
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 4146
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 4147
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4151
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 4157
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",make Data type icon visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4161
    :cond_2
    return-void
.end method

.method private applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4249
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileActivityIcon(I)V

    .line 4250
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiActivityIcon(I)V

    .line 4251
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setRoamingIcon(I)V

    .line 4252
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setBtTetherState(Z)V

    .line 4254
    return-void
.end method

.method private applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4244
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4246
    return-void
.end method

.method private applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4165
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyPermanentDataIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4168
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_0

    .line 4169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 4171
    :cond_0
    return-void
.end method

.method private applySGLTE(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 18
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4176
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "applyForSGLTE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4180
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4181
    .local v15, "dataTypeIcon":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    .line 4182
    .local v17, "mobileActivityIconId":I
    const/16 v16, 0x1

    .line 4183
    .local v16, "mShowDataIcon":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_2

    .line 4184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 4189
    .local v6, "csState":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSglteMode()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    .line 4190
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_3

    .line 4191
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4192
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4193
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4194
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is unknown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f02031d

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v2, 0x7f02031e

    if-ne v1, v2, :cond_1

    .line 4206
    :cond_0
    const/16 v16, 0x0

    .line 4207
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: mShowDataIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4230
    :cond_1
    :goto_2
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: set mShowPhoneRSSIForData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_3
    if-eqz v16, :cond_b

    move v10, v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    const v1, 0x7f02033f

    if-ne v15, v1, :cond_c

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v14

    move-object/from16 v7, p1

    invoke-interface/range {v7 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 4241
    return-void

    .line 4186
    .end local v6    # "csState":I
    :cond_2
    const/4 v6, 0x3

    .restart local v6    # "csState":I
    goto/16 :goto_0

    .line 4195
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-ne v6, v1, :cond_4

    .line 4196
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4197
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4198
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4199
    const v1, 0x7f02060c

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4200
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DataState is DATA_DISCONNECTED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4202
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4203
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    goto/16 :goto_1

    .line 4209
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 4210
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4211
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4212
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4213
    if-eqz v15, :cond_6

    .line 4214
    const v15, 0x7f02031d

    .line 4216
    :cond_6
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: RssiDisplayNum = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4217
    :cond_7
    const/4 v1, 0x1

    if-eq v6, v1, :cond_8

    const/4 v1, 0x3

    if-ne v6, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v1

    if-nez v1, :cond_9

    .line 4218
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4220
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4221
    const/4 v15, 0x0

    .line 4222
    const/16 v17, 0x0

    .line 4223
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: No service & RssiDisplayNum = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4225
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isWCDMA()Z

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataSignalIcon(ZIIIIZ)V

    .line 4226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 4227
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 4228
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: roam"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4232
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5
.end method

.method private applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4129
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyTMO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-nez v0, :cond_2

    .line 4135
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setDataState(I)V

    .line 4136
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "No Data Icon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    :cond_2
    return-void
.end method

.method private applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 2
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4117
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "applyVZW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCommon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 4121
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v0, :cond_1

    .line 4122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setHasService(Z)V

    .line 4126
    :cond_1
    return-void

    .line 4122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCarrierWifiIcon()V
    .locals 7

    .prologue
    .line 2354
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2356
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_3

    .line 2357
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2358
    .local v3, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 2361
    .local v2, "networkid":I
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2362
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 2363
    .local v1, "mFrequency":I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCarrierWifiIcon : getSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getFrequency = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isKTWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1388

    if-le v1, v4, :cond_0

    .line 2366
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "checkCarrierWifiIcon : KT AP and getFrequency is 5Ghz bandwidth"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getKTWifiIcon()[[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    .line 2386
    .end local v1    # "mFrequency":I
    .end local v2    # "networkid":I
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-void

    .line 2370
    .restart local v1    # "mFrequency":I
    .restart local v2    # "networkid":I
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "checkCarrierWifiIcon : not KT AP or getFrequency is not 5Ghz bandwidth"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    .end local v1    # "mFrequency":I
    .end local v2    # "networkid":I
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    goto :goto_0

    .line 2373
    .restart local v2    # "networkid":I
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2374
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCarrierWifiIcon : getSSID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getNetworkId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isLGTWifi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2377
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiIcon(I)[[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    goto :goto_0

    .line 2382
    .end local v2    # "networkid":I
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_3
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "checkCarrierWifiIcon : mWifiManager.getConnectionInfo() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final displaySignalStrength(I)V
    .locals 6
    .param p1, "signalStrength"    # I

    .prologue
    const v5, 0x7f020328

    .line 1499
    const/4 v0, -0x1

    .line 1502
    .local v0, "iconLevel":I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1505
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1508
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1513
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1535
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1536
    .local v1, "iconList":[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1538
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1539
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1540
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1541
    return-void

    .line 1509
    .end local v1    # "iconList":[I
    :cond_2
    if-gez v0, :cond_0

    .line 1510
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_0

    .line 1518
    :cond_3
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_5

    .line 1521
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1526
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1528
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1522
    :cond_5
    if-gez v0, :cond_4

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1529
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 1531
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 507
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 508
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 511
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 513
    .local v1, "mccMnc":I
    if-lez v1, :cond_0

    .line 514
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 517
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f020311

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 4298
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 4299
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 4300
    .local v0, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 4302
    .local v1, "iconMode":I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4310
    if-ne v0, v7, :cond_1

    .line 4329
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v2

    .line 4307
    .restart local v0    # "iconIndex":I
    .restart local v1    # "iconMode":I
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4313
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 4314
    packed-switch v1, :pswitch_data_1

    .line 4320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    move v2, v3

    .line 4322
    goto :goto_0

    :pswitch_1
    move v2, v3

    .line 4316
    goto :goto_0

    .line 4318
    :pswitch_2
    const v2, 0x7f0203e1

    goto :goto_0

    .line 4304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4314
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    .line 1489
    const/4 v0, 0x0

    .line 1494
    :goto_0
    return v0

    .line 1491
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mKeepFakeState:Z

    if-nez v0, :cond_1

    .line 1492
    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 3750
    const/4 v0, 0x1

    .line 3751
    .local v0, "dataServiceState":I
    const/4 v3, 0x0

    .line 3754
    .local v3, "getDataState":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataRegState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3755
    if-eqz v3, :cond_0

    .line 3756
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3758
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState: dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 3768
    .end local v0    # "dataServiceState":I
    .local v1, "dataServiceState":I
    :goto_0
    return v1

    .line 3760
    .end local v1    # "dataServiceState":I
    .restart local v0    # "dataServiceState":I
    :catch_0
    move-exception v2

    .line 3761
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3762
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 3763
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "dataServiceState":I
    :catch_1
    move-exception v2

    .line 3764
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3765
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 3766
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "dataServiceState":I
    :catch_2
    move-exception v2

    .line 3767
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState: InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 3768
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0
.end method

.method private getDataTypeIconIdForSPR()I
    .locals 4

    .prologue
    .line 5664
    const/4 v0, 0x0

    .line 5665
    .local v0, "dataType":I
    const/4 v1, 0x0

    .line 5667
    .local v1, "dormantDataType":I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5669
    :cond_0
    const v0, 0x7f020320

    .line 5670
    const v1, 0x7f02031f

    .line 5679
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .end local v1    # "dormantDataType":I
    :goto_1
    return v1

    .line 5671
    .restart local v1    # "dormantDataType":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 5672
    const v0, 0x7f02032d

    .line 5673
    const v1, 0x7f02032c

    goto :goto_0

    .line 5675
    :cond_2
    const v0, 0x7f020303

    .line 5676
    const v1, 0x7f020300

    goto :goto_0

    :cond_3
    move v1, v0

    .line 5679
    goto :goto_1
.end method

.method private getKTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 2456
    const v0, 0x7f02037e

    .line 2458
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 2475
    :goto_0
    return v0

    .line 2460
    :pswitch_0
    const v0, 0x7f02037c

    .line 2461
    goto :goto_0

    .line 2463
    :pswitch_1
    const v0, 0x7f02037f

    .line 2464
    goto :goto_0

    .line 2466
    :pswitch_2
    const v0, 0x7f02037d

    .line 2467
    goto :goto_0

    .line 2469
    :pswitch_3
    const v0, 0x7f02037e

    .line 2470
    goto :goto_0

    .line 2458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getKTWifiIcon()[[I
    .locals 4

    .prologue
    .line 2447
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getLinkStatus()I

    move-result v0

    .line 2448
    .local v0, "linkStatus":I
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKTWifiIcon: linkStatus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 2451
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_KT:[[I

    .line 2452
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[I

    goto :goto_0
.end method

.method private getLGTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 2419
    const v0, 0x7f0204fc

    .line 2421
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 2436
    :goto_0
    return v0

    .line 2423
    :pswitch_0
    const v0, 0x7f0204fa

    .line 2424
    goto :goto_0

    .line 2426
    :pswitch_1
    const v0, 0x7f0204f9

    .line 2427
    goto :goto_0

    .line 2429
    :pswitch_2
    const v0, 0x7f0204fb

    .line 2430
    goto :goto_0

    .line 2432
    :pswitch_3
    const v0, 0x7f0204fc

    goto :goto_0

    .line 2421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .param p1, "networkid"    # I

    .prologue
    .line 2400
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2402
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 2403
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2404
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2405
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-nez v3, :cond_0

    .line 2409
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 2415
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .param p1, "iconLevel"    # I

    .prologue
    .line 3731
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3742
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3744
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3733
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3734
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3736
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3737
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3739
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3740
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3731
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getRoamingIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v1, :cond_2

    .line 4261
    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4262
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "NoService, mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    :goto_0
    return-void

    .line 4263
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 4265
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCdmaEriIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4267
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdma(), isCdmaEri(), mRoamingIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4269
    :cond_4
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4270
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4273
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v1, :cond_7

    .line 4280
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4282
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4283
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4287
    :goto_1
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.isNetworkRoaming(), mRoamingIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4285
    :cond_6
    const v1, 0x7f020328

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    goto :goto_1

    .line 4290
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_7
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 4291
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "Nothing, mRoamingIconId = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 3

    .prologue
    .line 4355
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateORGDataNetType()V

    .line 4448
    :goto_0
    return-void

    .line 4361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4362
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYBDataNetType()V

    goto :goto_0

    .line 4364
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4365
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYADataNetType()V

    goto :goto_0

    .line 4367
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOYCDataNetType()V

    goto :goto_0

    .line 4370
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateOLBDataNetType()V

    goto :goto_0

    .line 4373
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVD2DataNetType()V

    goto :goto_0

    .line 4376
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4377
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVIDDataNetType()V

    goto :goto_0

    .line 4379
    :cond_6
    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4381
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTE4GICONDataNetType()V

    goto :goto_0

    .line 4383
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4384
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMHDataNetType()V

    goto :goto_0

    .line 4386
    :cond_9
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updatePCTDataNetType()V

    goto/16 :goto_0

    .line 4389
    :cond_a
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4391
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->update4GLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4393
    :cond_c
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "BVO"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4399
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4401
    :cond_e
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 4404
    :cond_f
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSFRDataNetType()V

    goto/16 :goto_0

    .line 4407
    :cond_10
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 4413
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkControllerImpl$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4446
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 4415
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    goto/16 :goto_0

    .line 4418
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 4421
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 4424
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 4427
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 4431
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 4434
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCUDataNetType()V

    goto/16 :goto_0

    .line 4438
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVDataNetType()V

    .line 4439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZVVLACInfo()V

    goto/16 :goto_0

    .line 4442
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateZTMDataNetType()V

    goto/16 :goto_0

    .line 4413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f020311

    const/4 v1, 0x1

    .line 4333
    if-ne p1, v1, :cond_1

    .line 4334
    const/4 v0, 0x0

    .line 4348
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4336
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4340
    :pswitch_2
    const v0, 0x7f0203e1

    goto :goto_0

    .line 4342
    :pswitch_3
    if-nez p2, :cond_2

    .line 4343
    const v0, 0x7f020313

    goto :goto_0

    .line 4344
    :cond_2
    if-ne p2, v1, :cond_0

    .line 4345
    const v0, 0x7f0203e2

    goto :goto_0

    .line 4336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1286
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1287
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1292
    :pswitch_0
    const/4 v0, 0x1

    .line 1295
    :cond_0
    :pswitch_1
    return v0

    .line 1287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2339
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2340
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2350
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2344
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2345
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2346
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2347
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2350
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private inetConditionForNetwork(I)I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 1717
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 436
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    return-object v0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 3567
    const/4 v0, 0x1

    .line 3569
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmccCard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5946
    const-string v1, ""

    .line 5947
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 5949
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 5962
    :cond_0
    :goto_0
    return v2

    .line 5952
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5954
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 5955
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5958
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5959
    :cond_3
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5960
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isKTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2440
    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ollehWiFi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2389
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2390
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2396
    :cond_0
    :goto_0
    return v0

    .line 2393
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2396
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 5980
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5981
    .local v3, "simNumeric":Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5983
    .local v1, "plmnNumeric":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 5984
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5985
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5987
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5988
    const/4 v4, 0x1

    .line 5991
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method private isQsTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 690
    const v0, 0x7f020138

    if-eq v0, p1, :cond_0

    const v0, 0x7f020128

    if-eq v0, p1, :cond_0

    const v0, 0x7f02012b

    if-eq v0, p1, :cond_0

    const v0, 0x7f02012d

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 1981
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    .line 1984
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSglteMode()Z
    .locals 2

    .prologue
    .line 5967
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 5968
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    .line 5969
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSglteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5970
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5971
    const/4 v0, 0x1

    .line 5975
    :goto_0
    return v0

    .line 5974
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isSglteMode is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5975
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 685
    const v0, 0x7f02033e

    if-eq v0, p1, :cond_0

    const v0, 0x7f020334

    if-eq v0, p1, :cond_0

    const v0, 0x7f020336

    if-eq v0, p1, :cond_0

    const v0, 0x7f020337

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWCDMA()Z
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 430
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    goto :goto_0

    .line 432
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    :cond_0
    return-void
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 3773
    packed-switch p1, :pswitch_data_0

    .line 3810
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3775
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3777
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3779
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 3781
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 3783
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 3785
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 3788
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 3790
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 3792
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 3794
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 3796
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 3798
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 3800
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 3802
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 3804
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 3806
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 3773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 1351
    return-void
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 15
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 4045
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v3, v0, v1

    .line 4046
    .local v3, "nwboosterWifiIconId":I
    const v4, 0x7f0204ea

    .line 4048
    .local v4, "nwboosterDataActivityIconId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    if-eqz v0, :cond_d

    .line 4049
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    .line 4051
    .local v14, "showBoosterIcon":Z
    :goto_0
    if-eqz v14, :cond_c

    .line 4052
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    if-eqz v0, :cond_b

    .line 4053
    const/4 v12, 0x0

    .line 4054
    .local v12, "nw_data_in":Z
    const/4 v13, 0x0

    .line 4056
    .local v13, "nw_data_out":Z
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 4058
    :cond_0
    const/4 v12, 0x1

    .line 4068
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 4069
    const v4, 0x7f0204e9

    .line 4078
    :cond_2
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4093
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :goto_3
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    .end local v14    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 4049
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 4059
    .restart local v12    # "nw_data_in":Z
    .restart local v13    # "nw_data_out":Z
    .restart local v14    # "showBoosterIcon":Z
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 4061
    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    .line 4062
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4064
    :cond_7
    const/4 v12, 0x1

    .line 4065
    const/4 v13, 0x1

    goto :goto_1

    .line 4070
    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    .line 4071
    const v4, 0x7f0204e8

    goto :goto_2

    .line 4072
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_a

    .line 4073
    const v4, 0x7f0204eb

    goto :goto_2

    .line 4074
    :cond_a
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 4075
    const v4, 0x7f0204ea

    goto :goto_2

    .line 4082
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    .line 4084
    .local v8, "mDimNWBoosterWifiIcon":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    const v9, 0x7f0204e9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 4089
    .end local v8    # "mDimNWBoosterWifiIcon":I
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4091
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4097
    .end local v14    # "showBoosterIcon":Z
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 4099
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private refreshOperatorLogoView()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 3512
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3513
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 3514
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3516
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 3517
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3519
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 3557
    :cond_0
    :goto_0
    return-void

    .line 3521
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 3522
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3524
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3525
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 3527
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3529
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3530
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 3535
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 3536
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 3539
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3541
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3542
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 3543
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 3544
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3546
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3547
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 3549
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3551
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3552
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0
.end method

.method private setAirplaneModeOff()V
    .locals 3

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1346
    .local v0, "mgr":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 1347
    return-void
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 526
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 530
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 532
    rem-int/lit8 v0, v1, 0x64

    .line 533
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 535
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 536
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCarrierText()V
    .locals 3

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 1142
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1143
    .local v1, "v":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1146
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 3821
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    .line 3822
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    .line 3823
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    .line 3824
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    .line 3825
    return-void
.end method

.method private shouldDisplayThreeGeesForSPR()Z
    .locals 2

    .prologue
    .line 5683
    const/4 v0, 0x0

    .line 5684
    .local v0, "result":Z
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 5700
    :goto_0
    :pswitch_0
    return v0

    .line 5697
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private shouldShowPermanentDataIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3983
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 3985
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3992
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v1, :cond_1

    .line 3999
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 3995
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3985
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final update4GICONDataNetType()V
    .locals 3

    .prologue
    .line 4898
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4901
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 4904
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4905
    const v0, 0x7f020305

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4906
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4907
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4909
    :cond_0
    return-void
.end method

.method private final update4GLTEICONDataNetType()V
    .locals 3

    .prologue
    .line 4951
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4954
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update4GLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4958
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4959
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4960
    const v0, 0x7f020369

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4961
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4963
    :cond_0
    return-void
.end method

.method private final updateATTDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0d0249

    const v4, 0x7f02036c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5109
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    .line 5110
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5154
    :pswitch_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType unknown radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5157
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5158
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5163
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5165
    return-void

    .line 5112
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5113
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5114
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5119
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5120
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5121
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5130
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5131
    const v0, 0x7f020308

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5132
    const v0, 0x7f02035d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5135
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 5138
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5139
    const v0, 0x7f020325

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5140
    const v0, 0x7f020368

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5143
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 5146
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5147
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5148
    const v0, 0x7f020364

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateCMCCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0d024d

    const v3, 0x7f02031b

    const v2, 0x7f020317

    .line 5889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5891
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5930
    :goto_0
    :pswitch_0
    return-void

    .line 5898
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5899
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5900
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5901
    const v0, 0x7f0202fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5902
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5903
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5910
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5905
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5906
    const v0, 0x7f020321

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5907
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5908
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_1

    .line 5914
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5915
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5917
    const v0, 0x7f020302

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5918
    const v0, 0x7f02035a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5919
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5926
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5921
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5922
    const v0, 0x7f020322

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5923
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5924
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_2

    .line 5893
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCUDataNetType()V
    .locals 2

    .prologue
    .line 5933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5935
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5937
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5943
    :goto_0
    return-void

    .line 5939
    :pswitch_0
    const v0, 0x7f02030b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5940
    const v0, 0x7f02035f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 5937
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 1099
    const/4 v0, 0x0

    .line 1100
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 1101
    const v0, 0x104010e

    .line 1134
    :goto_0
    if-eqz v0, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 1137
    :cond_0
    return-void

    .line 1103
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1129
    const v0, 0x104038b

    goto :goto_0

    .line 1106
    :pswitch_0
    const v0, 0x104038b

    .line 1107
    goto :goto_0

    .line 1109
    :pswitch_1
    const v0, 0x104037c

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_2
    const v0, 0x104039d

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_3
    const v0, 0x104039b

    .line 1116
    goto :goto_0

    .line 1119
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 1122
    :pswitch_5
    const v0, 0x104038f

    .line 1124
    goto :goto_0

    .line 1126
    :pswitch_6
    const v0, 0x1040399

    .line 1127
    goto :goto_0

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 1999
    const/4 v1, 0x0

    .line 2000
    .local v1, "iconId":I
    const/4 v2, 0x1

    .line 2003
    .local v2, "visible":Z
    const/4 v0, -0x1

    .line 2004
    .local v0, "currentPhoneType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 2005
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 2007
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_d

    if-ne v0, v7, :cond_d

    .line 2011
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v3, v4, :cond_c

    .line 2013
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2014
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_a

    .line 2015
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_0

    .line 2026
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2029
    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2035
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v3, :cond_3

    .line 2036
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v8, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 2040
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2041
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2042
    const/4 v2, 0x1

    .line 2046
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_6

    .line 2048
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_b

    .line 2050
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2051
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :goto_2
    const/4 v1, 0x0

    .line 2056
    const/4 v2, 0x1

    .line 2061
    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2063
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v3, :cond_7

    .line 2064
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2066
    :cond_7
    const/4 v1, 0x0

    .line 2067
    const/4 v2, 0x1

    .line 2081
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2131
    :cond_9
    :goto_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 2132
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2133
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    .line 2136
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon, mDataDirectionIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void

    .line 2017
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2018
    goto/16 :goto_0

    .line 2020
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2021
    goto/16 :goto_0

    .line 2023
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2024
    goto/16 :goto_0

    .line 2031
    :cond_a
    const/4 v1, 0x0

    .line 2032
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2053
    :cond_b
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : voice network icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2071
    :cond_c
    const/4 v1, 0x0

    .line 2072
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    .line 2073
    const/4 v2, 0x0

    .line 2075
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v3, :cond_8

    .line 2076
    const v1, 0x7f02038d

    goto :goto_3

    .line 2087
    :cond_d
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_11

    .line 2088
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    packed-switch v3, :pswitch_data_1

    .line 2100
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v6

    .line 2109
    :goto_5
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-eq v3, v5, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_e

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_10

    .line 2111
    :cond_e
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    if-ne v3, v5, :cond_12

    .line 2113
    :cond_f
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2114
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : disabled icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :goto_6
    const/4 v1, 0x0

    .line 2119
    const/4 v2, 0x1

    .line 2124
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdmaLTE()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 2126
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaLTE - mSimState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2090
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v7

    .line 2091
    goto :goto_5

    .line 2093
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v5

    .line 2094
    goto :goto_5

    .line 2096
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    aget v1, v3, v8

    .line 2097
    goto :goto_5

    .line 2104
    :cond_11
    const/4 v1, 0x0

    .line 2105
    const/4 v2, 0x0

    goto :goto_5

    .line 2116
    :cond_12
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "CDMA : voice network icon displayed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2015
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2088
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 9

    .prologue
    const v8, 0x7f0d024e

    const/4 v7, 0x0

    const v6, 0x7f0d024c

    const v5, 0x7f020359

    const v4, 0x7f0202fc

    .line 1721
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "updateDataNetType()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1724
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v2, :cond_0

    .line 1726
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1727
    .local v0, "inetCondition":I
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1728
    const v2, 0x7f020305

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1729
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1730
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1734
    const v2, 0x7f02035c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1959
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 1961
    return-void

    .line 1737
    .end local v0    # "inetCondition":I
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1738
    .restart local v0    # "inetCondition":I
    const/4 v1, 0x1

    .line 1739
    .local v1, "showDataTypeIcon":Z
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 1946
    :pswitch_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 1949
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1952
    const v2, 0x7f02036c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1741
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_1

    .line 1742
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1743
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1746
    const v2, 0x7f02036c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1753
    :cond_1
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_2

    .line 1754
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1755
    const v2, 0x7f02031d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1757
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1758
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1762
    const v2, 0x7f020363

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 1770
    :cond_2
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1771
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1773
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1774
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1778
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1784
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_3

    .line 1785
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1786
    const v2, 0x7f020321

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1788
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1789
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1793
    const v2, 0x7f020365

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1796
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1797
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1799
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1800
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1804
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1810
    :pswitch_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v2, :cond_4

    .line 1811
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1812
    const v2, 0x7f020322

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1813
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1816
    const v2, 0x7f020366

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1818
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1819
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1820
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1823
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1828
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_5

    .line 1830
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1831
    const v2, 0x7f0202f9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1833
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1834
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0250

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1838
    const v2, 0x7f020357

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1845
    :cond_5
    :pswitch_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_6

    .line 1846
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1847
    const v2, 0x7f0202f9

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1849
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1850
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0250

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1854
    const v2, 0x7f020357

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1864
    :cond_6
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1865
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1867
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1868
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1872
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1878
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_7

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1880
    :cond_7
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "LTE WIDEBAND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1882
    const v2, 0x7f020326

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1883
    const v2, 0x7f02036a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1884
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1886
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->m4GDataDistinguishable:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v2, :cond_9

    const-string v2, "1"

    const-string v3, "ril.lte_wideband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1888
    :cond_9
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "LTE WIDEBAND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1890
    const v2, 0x7f02030f

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1891
    const v2, 0x7f020360

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 1892
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1896
    :cond_a
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShow4GforLTE:Z

    if-eqz v2, :cond_b

    .line 1897
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1898
    const v2, 0x7f020305

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1899
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1900
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1904
    const v2, 0x7f02035c

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1907
    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1908
    const v2, 0x7f020324

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1909
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1910
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1914
    const v2, 0x7f020367

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1920
    :pswitch_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v2, :cond_c

    .line 1921
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1922
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1924
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1925
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1929
    const v2, 0x7f020364

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1932
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 1933
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1935
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1936
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1940
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 1739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateIconSet()V
    .locals 6

    .prologue
    .line 1149
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    .line 1150
    .local v2, "voiceNetworkType":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1153
    .local v1, "dataNetworkType":I
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIconSet, voice network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data network type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    if-nez v1, :cond_0

    move v0, v2

    .line 1164
    .local v0, "chosenNetworkType":I
    :goto_0
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " chosenNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspaDataDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hspapDistinguishable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showAtLeastThreeGees="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return-void

    .end local v0    # "chosenNetworkType":I
    :cond_0
    move v0, v1

    .line 1159
    goto :goto_0
.end method

.method private final updateLTE4GICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d024f

    .line 5012
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5015
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTE4GICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 5019
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5020
    const v0, 0x7f020305

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5021
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5040
    :cond_0
    :goto_0
    return-void

    .line 5024
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 5025
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_2

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5026
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5028
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5029
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5033
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5034
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5035
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5036
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateLTEICONDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d024f

    .line 4965
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4968
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLTEICONDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4970
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4971
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4972
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4974
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4975
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4976
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4985
    :cond_1
    :goto_0
    return-void

    .line 4979
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4980
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4981
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4982
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateNoSIMNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x111

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3831
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mDoNotShowNoSimNotification:Z

    if-eqz v7, :cond_1

    .line 3888
    :cond_0
    :goto_0
    return-void

    .line 3835
    :cond_1
    const-string v7, "ro.config.donot_nosim"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3836
    const-string v7, "StatusBar.NetworkController"

    const-string v8, "Don\'t show No SIM Notification"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3840
    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v7, :cond_0

    .line 3844
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3846
    .local v1, "mgr":Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v7, v8, :cond_3

    .line 3847
    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3849
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3852
    .local v2, "res":Landroid/content/res/Resources;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_5

    .line 3853
    const v7, 0x7f0d0422

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3861
    .local v6, "title":Ljava/lang/String;
    :goto_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_7

    .line 3862
    const v7, 0x7f0d0424

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3867
    .local v5, "text":Ljava/lang/String;
    :goto_2
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f020388

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3876
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v7, :cond_4

    .line 3877
    const v7, 0x7f02038d

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3879
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SIM_TYPE_POPUP"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3880
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v7, "SIM_TYPE"

    const-string v8, "NO_SIM"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3881
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v10, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 3883
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3886
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 3854
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v7, :cond_6

    .line 3855
    const v7, 0x7f0d0421

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 3857
    .end local v6    # "title":Ljava/lang/String;
    :cond_6
    const v7, 0x7f0d0420

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_1

    .line 3864
    :cond_7
    const v7, 0x7f0d0423

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_2
.end method

.method private final updateOLBDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0d024d

    const v4, 0x7f020366

    const v3, 0x7f020322

    .line 4762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4764
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4767
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4768
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4769
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4774
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4775
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 4776
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4777
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4778
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4779
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4789
    :cond_1
    :goto_0
    return-void

    .line 4782
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4783
    const v0, 0x7f0202fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4784
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4785
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f020322

    const v6, 0x7f020305

    const v5, 0x7f0202fc

    const v4, 0x7f0d024e

    const v3, 0x7f0d024d

    .line 4452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4454
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 4459
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4461
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 4462
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4463
    const v0, 0x7f020321

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4464
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4484
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4485
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4487
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 4488
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4489
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4490
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4510
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4511
    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4512
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4513
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4515
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4516
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4550
    :cond_6
    :goto_2
    return-void

    .line 4468
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4469
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4470
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4475
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4476
    const v0, 0x7f020302

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4477
    const v0, 0x7f02035a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4478
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4494
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4495
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4496
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4501
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4502
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4503
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4520
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4521
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4522
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4526
    :cond_c
    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4527
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND_ORANGE_TDM!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4528
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4529
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4530
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4534
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_e

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4535
    :cond_e
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4537
    const v0, 0x7f02030f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4538
    const v0, 0x7f020360

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4539
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4542
    :cond_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4543
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4544
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4545
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYADataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f02035c

    const v6, 0x7f020305

    const v5, 0x7f0d024c

    const v4, 0x7f020359

    const v3, 0x7f0202fc

    .line 4621
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4624
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4626
    const v0, 0x7f02036c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4627
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4631
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4632
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4633
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4634
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4635
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4639
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4643
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4644
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4645
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4646
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4666
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4668
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4669
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4670
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4689
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4691
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4693
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4694
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4695
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4706
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4707
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4708
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4709
    const v0, 0x7f020364

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4716
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 4717
    return-void

    .line 4650
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 4651
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4652
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4653
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4654
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4657
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4658
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4659
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4660
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4674
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_b

    .line 4675
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4676
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4677
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4678
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4681
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4682
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4683
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4684
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4698
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4699
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4700
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4701
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private final updateOYBDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0d024f

    const v6, 0x7f0d024e

    const v5, 0x7f0d0249

    const v4, 0x7f02035c

    const v3, 0x7f020305

    .line 4553
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4556
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4558
    const v0, 0x7f02036c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4559
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4563
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4564
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4565
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4566
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4567
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4571
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4575
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4576
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4577
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4583
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4584
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4585
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4586
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4587
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4592
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 4593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_5

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4594
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4596
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4597
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4609
    :cond_6
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 4610
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4611
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4612
    const v0, 0x7f020364

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4617
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 4618
    return-void

    .line 4601
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4602
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4603
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4604
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateOYCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0d024f

    const v3, 0x7f0d024d

    .line 4719
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4760
    :cond_0
    :goto_0
    return-void

    .line 4723
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4729
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 4730
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4731
    const v0, 0x7f020322

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4732
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4733
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4744
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4745
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_4

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4746
    :cond_4
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4748
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4749
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4750
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4736
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4737
    const v0, 0x7f020321

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4738
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 4753
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4754
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4755
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4756
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private final updatePCTDataNetType()V
    .locals 3

    .prologue
    .line 4933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4936
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePCTDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4938
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 4939
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4940
    const v0, 0x7f020305

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4941
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4949
    :cond_0
    :goto_0
    return-void

    .line 4943
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4944
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4945
    const v0, 0x7f02030c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4946
    const v0, 0x7f020369

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4947
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRoamingNotification()V
    .locals 13

    .prologue
    const v12, 0x7f0d0428

    const/16 v11, 0x222

    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3893
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3896
    .local v2, "mgr":Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "data_roaming"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    .line 3899
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    const v9, 0x7f020313

    if-eq v6, v9, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_3

    .line 3902
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eqz v6, :cond_1

    .line 3903
    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3904
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 3905
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateRomaingNotification cancel"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v6, v8

    .line 3896
    goto :goto_0

    .line 3908
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3909
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0d0425

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3911
    .local v5, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3912
    .local v1, "currentRoamingType":I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    if-eqz v6, :cond_8

    .line 3913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v6, :cond_5

    .line 3914
    :cond_4
    const v6, 0x7f0d0427

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3915
    .local v4, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 3936
    :goto_2
    const-string v6, "StatusBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRomaingNotification Type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    if-eq v6, v1, :cond_1

    .line 3938
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v8, 0x7f0202cd

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3947
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3948
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    .line 3949
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDataRoamingTypeForVZW:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataRoamingTypeForVZW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3916
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "text":Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_7

    .line 3919
    :cond_6
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3920
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 3922
    .end local v4    # "text":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0d0426

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3923
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 3926
    .end local v4    # "text":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eq v6, v10, :cond_9

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-ne v6, v7, :cond_a

    .line 3929
    :cond_9
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3930
    .restart local v4    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 3932
    .end local v4    # "text":Ljava/lang/String;
    :cond_a
    const-string v4, "No Notification"

    .line 3933
    .restart local v4    # "text":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private final updateSFRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020358

    const v5, 0x7f020302

    const v4, 0x7f0202fc

    const v3, 0x7f0202fa

    const v2, 0x7f0d024d

    .line 5042
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5043
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-nez v0, :cond_1

    .line 5044
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    .line 5106
    :cond_1
    :goto_0
    return-void

    .line 5046
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5047
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5048
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5049
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5054
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5055
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5056
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5057
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5058
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5066
    :cond_2
    :sswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5067
    const v0, 0x7f020315

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5068
    const v0, 0x7f020362

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5069
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5075
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5076
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5077
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5078
    const v0, 0x7f02035a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5082
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5083
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5084
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5090
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5091
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5092
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5093
    const v0, 0x7f02035a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5094
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5097
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5098
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5099
    const v0, 0x7f020359

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5044
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020364

    const v5, 0x7f0202fc

    const v4, 0x7f0d024c

    const v3, 0x7f020303

    const v2, 0x7f020359

    .line 5709
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 5711
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_0

    .line 5712
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5713
    const v0, 0x7f02030a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5714
    const v0, 0x7f02035e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5720
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5883
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5885
    return-void

    .line 5716
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5717
    const v0, 0x7f02032d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5718
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 5723
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5865
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_e

    .line 5866
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5867
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5868
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5869
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5725
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_2

    .line 5726
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5730
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5731
    const v0, 0x7f02036c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5732
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5728
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    goto :goto_2

    .line 5736
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_3

    .line 5737
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5738
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5739
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5745
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5741
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5742
    const v0, 0x7f020320

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5743
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_3

    .line 5749
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_4

    .line 5750
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5751
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5752
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5758
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5754
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5755
    const v0, 0x7f020320

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5756
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_4

    .line 5762
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_5

    .line 5763
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5764
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5765
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5771
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5767
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5768
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5769
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_5

    .line 5777
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 5778
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_6

    .line 5779
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5780
    const v0, 0x7f020321

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5781
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5787
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5783
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5784
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5785
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_6

    .line 5790
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_8

    .line 5791
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5792
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5793
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5799
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5795
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5796
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5797
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_7

    .line 5805
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_a

    .line 5806
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_9

    .line 5807
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5808
    const v0, 0x7f020322

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5809
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5815
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5811
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5812
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5813
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_8

    .line 5818
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_b

    .line 5819
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5820
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5821
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5827
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5823
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5824
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5825
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_9

    .line 5839
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_c

    .line 5840
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5841
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5842
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5848
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5844
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5845
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5846
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_a

    .line 5852
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_d

    .line 5853
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5854
    const v0, 0x7f02030a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5855
    const v0, 0x7f02035e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5861
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5857
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5858
    const v0, 0x7f02032d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5859
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto :goto_b

    .line 5872
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5873
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5874
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5875
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 3

    .prologue
    .line 1989
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 1991
    const v0, 0x7f02011d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 1995
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 1996
    return-void

    .line 1993
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    goto :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 3498
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    .line 3502
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    .line 3505
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeBrand:Ljava/lang/String;

    .line 3507
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 4987
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4990
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTFGDataNetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4993
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 5010
    :cond_0
    :goto_0
    return-void

    .line 4996
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4998
    .local v0, "NetworkSubstring":Ljava/lang/String;
    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkSubstring:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 5002
    const-string v1, "334"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "716"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "734"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "704"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "706"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "748"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5003
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5004
    const v1, 0x7f020324

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5005
    const v1, 0x7f020367

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5006
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMHDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d024f

    .line 4911
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4914
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTMHDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4916
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4917
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4918
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4920
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4921
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4922
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4931
    :cond_1
    :goto_0
    return-void

    .line 4925
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4926
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4927
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4928
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMODataNetType()V
    .locals 10

    .prologue
    const v9, 0x7f02036c

    const v8, 0x7f02035b

    const v7, 0x7f020304

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5168
    const/4 v0, 0x0

    .line 5169
    .local v0, "isNetworkRoaming":Z
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5170
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v2, :pswitch_data_0

    .line 5315
    :pswitch_0
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataNetType unknown radio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5318
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5319
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5324
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5326
    return-void

    .line 5172
    :pswitch_1
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5173
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5174
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5180
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_a

    .line 5181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    .line 5183
    .local v1, "voice":I
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v.s.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v.t.:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    if-nez v1, :cond_0

    .line 5186
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5187
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5188
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 5191
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5192
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5193
    const v2, 0x7f02031d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5194
    const v2, 0x7f020363

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5195
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5197
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    .line 5202
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 5203
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5205
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5206
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    if-nez v0, :cond_4

    .line 5208
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5209
    const v2, 0x7f020310

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5210
    const v2, 0x7f020361

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5211
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5214
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5215
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5216
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5217
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5220
    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 5221
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_6

    .line 5222
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5224
    :cond_6
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5225
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    if-nez v0, :cond_7

    .line 5227
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5228
    const v2, 0x7f020327

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5229
    const v2, 0x7f02036b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5230
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5233
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5234
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5235
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5236
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5239
    :cond_8
    if-ne v1, v6, :cond_9

    .line 5240
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5241
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5242
    const v2, 0x7f020364

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5246
    :cond_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5247
    const v2, 0x7f02036b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 5250
    .end local v1    # "voice":I
    :cond_a
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5251
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    goto/16 :goto_0

    .line 5256
    :pswitch_3
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5257
    const v2, 0x7f02031d

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5258
    const v2, 0x7f020363

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5259
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0252

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5267
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_b

    .line 5268
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5270
    :cond_b
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5271
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5272
    if-nez v0, :cond_c

    .line 5273
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5274
    const v2, 0x7f020310

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5275
    const v2, 0x7f020361

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5276
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5279
    :cond_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5280
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5281
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5282
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5287
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_d

    .line 5288
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5290
    :cond_d
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    .line 5291
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTMODataNetType R -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    if-nez v0, :cond_e

    .line 5293
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5294
    const v2, 0x7f020327

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5295
    const v2, 0x7f02036b

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5296
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5299
    :cond_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5300
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5301
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5302
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5307
    :pswitch_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5308
    const v2, 0x7f02031e

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5309
    const v2, 0x7f020364

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5310
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0249

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 5170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f02060d

    const v9, 0x7f02060c

    const v8, 0x7f0204e5

    const v7, 0x7f020139

    const/4 v6, 0x0

    .line 1546
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ss="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_2

    .line 1552
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTransitionState:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    if-eqz v3, :cond_1

    .line 1558
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mTargetSignalStrength:I

    .line 1714
    :goto_0
    return-void

    .line 1561
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMessageUpdateNotDone:Z

    .line 1562
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1569
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eqz v3, :cond_6

    .line 1572
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_5

    .line 1574
    :cond_3
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1575
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1576
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1577
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1580
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_4

    .line 1581
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1582
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1708
    :cond_4
    :goto_1
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength, No signal level. mPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDataSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mQSPhoneSignalIconId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mContentDescriptionPhoneSignal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1607
    :cond_5
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1608
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1609
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1610
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1615
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_a

    .line 1619
    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoiceCapable:Z

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_9

    .line 1620
    :cond_8
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1621
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1622
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1623
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1626
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v3, v4, :cond_4

    .line 1627
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1628
    iput v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 1642
    :cond_9
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1643
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1644
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1645
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 1651
    :cond_a
    const/4 v2, 0x0

    .line 1653
    .local v2, "psIconLevel":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_c

    .line 1654
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1656
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: mAlwaysShowCdmaRssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to cdmaLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead of level="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v3, :cond_d

    .line 1678
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too high"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 1686
    :cond_b
    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1689
    .local v1, "iconList":[I
    aget v3, v1, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1690
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1694
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getPhoneSignalDescriptionIconId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1699
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataSignalIconId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1703
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: iconLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1672
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_2

    .line 1681
    :cond_d
    if-gez v0, :cond_b

    .line 1682
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength:iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too low"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_3
.end method

.method private final updateVD2DataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0d024f

    .line 4791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4793
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4796
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4797
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4799
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4800
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4801
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4811
    :cond_1
    :goto_0
    return-void

    .line 4804
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4805
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4806
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateVIDDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0d024c

    const v6, 0x7f02035c

    const v5, 0x7f020359

    const v4, 0x7f020305

    const v3, 0x7f0202fc

    .line 4813
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 4815
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4823
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4824
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4825
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4826
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4837
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 4840
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4845
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4846
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4847
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4848
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4859
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 4860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4865
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4866
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4867
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4880
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 4881
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-nez v0, :cond_7

    const-string v0, "1"

    const-string v1, "ril.lte_wideband"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4882
    :cond_7
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE_WIDE_BAND!@!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4884
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4885
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4886
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4896
    :cond_8
    :goto_3
    return-void

    .line 4829
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4830
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4831
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4851
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4852
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4853
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4854
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4871
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4872
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4873
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4874
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2

    .line 4889
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 4890
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 4891
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 4892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_3
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0d024c

    const v4, 0x7f020359

    const v3, 0x7f020317

    const v2, 0x7f0202fc

    .line 5334
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5459
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 5460
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5461
    const v0, 0x7f02031e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5462
    const v0, 0x7f020364

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5463
    const v0, 0x7f02031a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5478
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    .line 5480
    return-void

    .line 5334
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    goto :goto_0

    .line 5346
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 5347
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5348
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5349
    const v0, 0x7f02036c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5350
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5359
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5360
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5361
    const v0, 0x7f02031d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5362
    const v0, 0x7f020363

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5363
    const v0, 0x7f020319

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5371
    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5372
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5373
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5374
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 5381
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5382
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5383
    const v0, 0x7f020321

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5384
    const v0, 0x7f020365

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5385
    const v0, 0x7f02031b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5389
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5390
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5391
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5392
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5398
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5399
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5400
    const v0, 0x7f020322

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5401
    const v0, 0x7f020366

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5402
    const v0, 0x7f02031c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5403
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5406
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5407
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5408
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5409
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5416
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 5417
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5418
    const v0, 0x7f0202f9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5419
    const v0, 0x7f020357

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5420
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5428
    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 5429
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5430
    const v0, 0x7f0202f9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5431
    const v0, 0x7f020357

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5432
    const v0, 0x7f020316

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5443
    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5444
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5445
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5446
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5451
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5452
    const v0, 0x7f02030a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5453
    const v0, 0x7f02035e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5454
    const v0, 0x7f020318

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5467
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 5468
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 5469
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 5470
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 5334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateZTMDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f02032e

    .line 5596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 5597
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5600
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5602
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZTMDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5652
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 5653
    const v0, 0x7f020331

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5659
    :goto_0
    return-void

    .line 5606
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 5607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5613
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5614
    const v0, 0x7f020330

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5620
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5625
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5626
    const v0, 0x7f020332

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5628
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5633
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5634
    const v0, 0x7f020333

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5636
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5644
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5648
    :pswitch_7
    const v0, 0x7f02032f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5655
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f02032e

    .line 5493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 5494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5497
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 5499
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateZVVDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5549
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 5550
    const v0, 0x7f020331

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    .line 5556
    :goto_0
    return-void

    .line 5503
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 5504
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5510
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 5511
    const v0, 0x7f020330

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5517
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5522
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 5523
    const v0, 0x7f020332

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5525
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5530
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 5531
    const v0, 0x7f020333

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5533
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5541
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5545
    :pswitch_7
    const v0, 0x7f02032f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5552
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 5501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVLACInfo()V
    .locals 6

    .prologue
    .line 5559
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_0

    .line 5560
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    .line 5562
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    packed-switch v3, :pswitch_data_0

    .line 5583
    :pswitch_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 5585
    :cond_1
    :goto_0
    return-void

    .line 5573
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    .line 5574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getAreaInfo()Ljava/lang/String;

    move-result-object v1

    .line 5575
    .local v1, "strAreaInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 5577
    .local v2, "strNetworkName":Ljava/lang/String;
    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 5578
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 5579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 5562
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    return-void
.end method

.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V

    .line 622
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method public addEmergencyLabelView(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMoreIconView:Landroid/view/View;

    .line 602
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 613
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconView:Landroid/view/View;

    .line 598
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 608
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 1
    .param p1, "ap"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    .line 637
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 559
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 560
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 561
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 562
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 563
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 564
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 566
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3402
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3403
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 3404
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 3405
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 3406
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 3407
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 3408
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 3493
    :cond_0
    :goto_0
    return-void

    .line 3409
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_3

    const-string v4, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3410
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 3411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3412
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 3414
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 3415
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3416
    const-string v4, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3417
    .local v9, "airplane":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3418
    const-string v4, "show"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3419
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3420
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const v4, 0x7f0202df

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_2

    .line 3423
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v4, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3424
    .local v11, "fully":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 3425
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 3427
    :cond_5
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3428
    .local v16, "wifi":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 3429
    const-string v4, "show"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3430
    .restart local v2    # "show":Z
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3431
    .local v14, "level":Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 3432
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 3435
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v4, :cond_9

    const v3, 0x7f020513

    .line 3437
    .local v3, "iconId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3438
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    const-string v4, "Demo"

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    goto :goto_6

    .line 3425
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    .end local v16    # "wifi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 3432
    .restart local v2    # "show":Z
    .restart local v14    # "level":Ljava/lang/String;
    .restart local v16    # "wifi":Ljava/lang/String;
    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 3435
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v3, v4, v5

    goto :goto_5

    .line 3443
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 3445
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "level":Ljava/lang/String;
    :cond_b
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3446
    .local v15, "mobile":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 3447
    const-string v4, "show"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3448
    .restart local v2    # "show":Z
    const-string v4, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3449
    .local v10, "datatype":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 3450
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f0202f9

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 3461
    const-string v4, "1x"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f020128

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 3472
    :cond_c
    sget-object v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 3473
    .local v13, "icons":[[I
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3474
    .restart local v14    # "level":Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 3475
    const-string v4, "null"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 3478
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v4, :cond_1f

    const v3, 0x7f0204e5

    .line 3480
    .restart local v3    # "iconId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3481
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v5, "Demo"

    const-string v6, "Demo"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const v8, 0x7f02033f

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v8

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_b

    .line 3450
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "iconId":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "icons":[[I
    .end local v14    # "level":Ljava/lang/String;
    :cond_e
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f0202fc

    goto :goto_7

    :cond_f
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f020305

    goto :goto_7

    :cond_10
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f02031d

    goto/16 :goto_7

    :cond_11
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f02031e

    goto/16 :goto_7

    :cond_12
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f020321

    goto/16 :goto_7

    :cond_13
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f020324

    goto/16 :goto_7

    :cond_14
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f020328

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 3461
    :cond_16
    const-string v4, "3g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f02012b

    goto/16 :goto_8

    :cond_17
    const-string v4, "4g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f02012d

    goto/16 :goto_8

    :cond_18
    const-string v4, "e"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f02012f

    goto/16 :goto_8

    :cond_19
    const-string v4, "g"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f020135

    goto/16 :goto_8

    :cond_1a
    const-string v4, "h"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f020136

    goto/16 :goto_8

    :cond_1b
    const-string v4, "lte"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f020138

    goto/16 :goto_8

    :cond_1c
    const-string v4, "roam"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f02013b

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 3475
    .restart local v13    # "icons":[[I
    .restart local v14    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v13, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_9

    .line 3478
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v13, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v3, v4, v5

    goto/16 :goto_a

    .line 3481
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .restart local v3    # "iconId":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 3490
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3251
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3258
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3259
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3260
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3262
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3264
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3266
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3267
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3269
    const-string v0, "  mEmgcCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmgcCallState:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3272
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3273
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3274
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3276
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3277
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3278
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3279
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3282
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3284
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3285
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3286
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3287
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3293
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3294
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3295
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3296
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3297
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3298
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3300
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3301
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3302
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3304
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3305
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3306
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3307
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3308
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3309
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3310
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3311
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3312
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3313
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3314
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3317
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3318
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3319
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3320
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3321
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3322
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3323
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3324
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3325
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3329
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3331
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3332
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 3335
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3336
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3337
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3338
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3339
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3341
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3346
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3347
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3350
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3352
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3354
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3355
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3356
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3357
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3358
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3360
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3361
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3362
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3364
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3365
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3366
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3367
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3368
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3369
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3370
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3372
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3373
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3374
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3375
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3377
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3378
    return-void

    .line 3252
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3238
    const/4 v0, 0x0

    .line 3240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getDataSignalIconId(II)I
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I

    .prologue
    .line 3704
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3719
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3721
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3706
    .end local v0    # "iconId":I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3707
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_CTC:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3709
    .end local v0    # "iconId":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3711
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3713
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3714
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3716
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3717
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3704
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v0

    .line 660
    .local v0, "info":Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;
    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;->carrier:Ljava/lang/String;

    .line 663
    :cond_0
    return-object v0
.end method

.method public getGsmSignalLevel()I
    .locals 1

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_0

    .line 3245
    const/4 v0, 0x0

    .line 3247
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0
.end method

.method protected getPhoneSignalIconList(I)[I
    .locals 3
    .param p1, "inetCondition"    # I

    .prologue
    .line 3676
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3691
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3693
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 3678
    .end local v0    # "iconList":[I
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3679
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_CTC:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3681
    .end local v0    # "iconList":[I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3683
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3685
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3686
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3688
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3689
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3676
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 3381
    if-eqz p1, :cond_0

    .line 3382
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3384
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3389
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 3385
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 3386
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 3389
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 3231
    const/4 v0, 0x0

    .line 3233
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1965
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 1968
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1969
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1970
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1971
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1977
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileDataSupported()Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileDataController;->isMobileDataSupported()Z

    move-result v0

    return v0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 21
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 776
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/16 v20, 0x1

    .line 777
    .local v20, "wifiEnabled":Z
    :goto_0
    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 779
    .local v8, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    :cond_1
    const/4 v5, 0x1

    .line 782
    .local v5, "wifiIn":Z
    :goto_2
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_2
    const/4 v6, 0x1

    .line 785
    .local v6, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 788
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    :cond_3
    const/4 v14, 0x1

    .line 790
    .local v14, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v15, 0x1

    .line 792
    .local v15, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 793
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 811
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 812
    return-void

    .line 776
    .end local v5    # "wifiIn":Z
    .end local v6    # "wifiOut":Z
    .end local v8    # "wifiDesc":Ljava/lang/String;
    .end local v14    # "mobileIn":Z
    .end local v15    # "mobileOut":Z
    .end local v20    # "wifiEnabled":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 777
    .restart local v20    # "wifiEnabled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 779
    .restart local v8    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 782
    .restart local v5    # "wifiIn":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 788
    .restart local v6    # "wifiOut":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 790
    .restart local v14    # "mobileIn":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 797
    .restart local v15    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 799
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 805
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_6
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f02030f

    const v3, 0x7f020305

    const v2, 0x104037c

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 820
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 821
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    .line 970
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isCmccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    .line 829
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - ACTION_SIM_STATE_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsCmccCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 831
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 832
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 834
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, "plmn":Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 836
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 838
    const/4 v9, 0x0

    .line 842
    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 849
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 859
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 861
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 863
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 864
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 865
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 866
    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 868
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 873
    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 876
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 878
    :cond_b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 880
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    .line 884
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_c

    .line 885
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 887
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 891
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 898
    :cond_e
    const-string v0, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 899
    const-string v0, "caindicator"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 900
    const-string v0, "caindicator"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 901
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND with extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    if-eqz v0, :cond_12

    .line 908
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f020324

    if-ne v0, v1, :cond_11

    .line 911
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const v0, 0x7f020326

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 913
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 914
    const v0, 0x7f02036a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 915
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 903
    :cond_10
    const-string v0, "ril.lte_wideband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 904
    .local v8, "currentBandwidth":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCAIndicator:Z

    .line 905
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LTE WIDEBAND without extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 916
    .end local v8    # "currentBandwidth":Ljava/lang/String;
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v3, :cond_1

    .line 917
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 919
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 920
    const v0, 0x7f020360

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 921
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 924
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v1, 0x7f020326

    if-ne v0, v1, :cond_13

    .line 925
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:LTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const v0, 0x7f020324

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 927
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 928
    const v0, 0x7f020367

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 929
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 930
    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v4, :cond_1

    .line 931
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "LTE WIDEBAND:4G"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 933
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 934
    const v0, 0x7f02035c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    .line 935
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 941
    :cond_14
    const-string v0, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 942
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "START_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 944
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 945
    :cond_15
    const-string v0, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 946
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "STOP_NETWORK_BOOSTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    .line 948
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 953
    :cond_16
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const v1, 0x1040398

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 955
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 956
    :cond_17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 958
    :cond_18
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 959
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-nez v0, :cond_1

    .line 960
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 961
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 966
    :cond_19
    const-string v0, "com.android.systemui.action.airplane_off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setAirplaneModeOff()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 9
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 701
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 713
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 715
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v6, 0x7f02033f

    if-ne v0, v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 766
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v0, :cond_c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    .line 768
    .local v8, "showAirplane":Z
    :goto_5
    if-eqz v8, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_1
    const/4 v0, 0x1

    :goto_6
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    .line 701
    .end local v8    # "showAirplane":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 715
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 737
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_6

    .line 738
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyVZW(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    .line 754
    :goto_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_8
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    const v6, 0x7f02033f

    if-ne v0, v6, :cond_b

    const/4 v6, 0x1

    :goto_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Operator;

    if-ne v0, v1, :cond_7

    .line 740
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyTMO(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 743
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v0, :cond_8

    .line 744
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyCHN(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 745
    :cond_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_9

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyPermanentDataIcon(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 748
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->applyOpen(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_7

    .line 754
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    .line 766
    :cond_c
    const/4 v8, 0x1

    goto :goto_5

    .line 768
    .restart local v8    # "showAirplane":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method refreshViews()V
    .locals 19

    .prologue
    .line 2592
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 2594
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2595
    .local v6, "combinedSignalIconId":I
    const-string v5, ""

    .line 2596
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v15, ""

    .line 2597
    .local v15, "wifiLabel":Ljava/lang/String;
    const-string v13, ""

    .line 2599
    .local v13, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v8

    .line 2602
    .local v8, "emergencyOnly":Z
    const-string v12, ""

    .line 2605
    .local v12, "mATTmobileLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 2606
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2607
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2608
    const-string v13, ""

    .line 2766
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_19

    .line 2768
    const v16, 0x7f0d0292

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2770
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2825
    :cond_1
    :goto_1
    move-object v5, v15

    .line 2829
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2839
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d01f4

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2841
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d0255

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2846
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "mBluetoothTethered:mDataTypeIconId is BT Tether Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 2848
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2849
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 2853
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1e

    const/4 v9, 0x1

    .line 2854
    .local v9, "ethernetConnected":Z
    :goto_3
    if-eqz v9, :cond_3

    .line 2855
    const v16, 0x7f0d02a1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2858
    :cond_3
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-nez v16, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v16

    if-nez v16, :cond_21

    .line 2866
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0d0256

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2868
    const v16, 0x7f0204d5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 2869
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 2870
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2874
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1f

    .line 2880
    const-string v13, ""

    .line 2948
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 2949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_24

    const v16, 0x7f02014a

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v16, v0

    if-gez v16, :cond_25

    const v16, 0x7f020139

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 2953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 2957
    :cond_7
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowAirPlane:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    const v17, 0x7f02060c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 2958
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    .line 2969
    :cond_9
    const-string v17, "StatusBar.NetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews connected={"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_26

    const-string v16, " wifi"

    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_27

    const-string v16, " data"

    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " } level="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    if-nez v16, :cond_28

    const-string v16, "??"

    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mobileLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " wifiLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " emergencyOnly="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " combinedLabel="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mAirplaneMode="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataActivity="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSPhoneSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataDirectionIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataSignalIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSDataTypeIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mNoSimIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mQSWifiIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mWifiActivityIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " mBluetoothTetherIconId=0x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, "/"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 3020
    .local v3, "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_a

    .line 2638
    .end local v3    # "cb":Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v9    # "ethernetConnected":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2642
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v16, :cond_b

    .line 2643
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2644
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2649
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 2650
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2652
    move-object v5, v13

    .line 2653
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2657
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v16, :cond_11

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeForSPR:Z

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataNetType:I

    move/from16 v16, v0

    const/16 v17, 0xd

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 2659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 2670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_10

    .line 2671
    const v16, 0x7f0202dd

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2743
    :cond_c
    :goto_b
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->shouldShowPermanentDataIcon()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 2746
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2754
    :cond_d
    :goto_c
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-nez v16, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataServiceState:I

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 2757
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneState:I

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2759
    :cond_f
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2760
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "Invisible Data Activity Icon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2661
    :pswitch_0
    const v16, 0x7f0202db

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_b

    .line 2664
    :pswitch_1
    const v16, 0x7f0202de

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2667
    :pswitch_2
    const v16, 0x7f0202dc

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2673
    :cond_10
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2677
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeTMOstyle:Z

    move/from16 v16, v0

    if-nez v16, :cond_12

    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_15

    .line 2678
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 2694
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeATTstyle:Z

    move/from16 v16, v0

    if-eqz v16, :cond_14

    .line 2695
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2701
    :goto_d
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_c

    .line 2702
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataTypeIconIdForSPR()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    goto/16 :goto_b

    .line 2680
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2683
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2686
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2689
    :pswitch_6
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v16, :cond_13

    .line 2690
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2697
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataIconList:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_d

    .line 2705
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_2

    .line 2721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    if-eqz v16, :cond_17

    .line 2722
    const v16, 0x7f0204e3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 2729
    :goto_e
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v16, :cond_c

    .line 2730
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasService()Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 2734
    const-string v16, "StatusBar.NetworkController"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataActivity:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2707
    :pswitch_7
    const v16, 0x7f0204df

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_e

    .line 2710
    :pswitch_8
    const v16, 0x7f0204ec

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto :goto_e

    .line 2713
    :pswitch_9
    const v16, 0x7f0204e1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_e

    .line 2724
    :cond_17
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_e

    .line 2748
    :cond_18
    const v16, 0x7f0204d6

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    goto/16 :goto_c

    .line 2773
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2775
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "xxxxXXXXxxxxXXXX"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2778
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivity:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_3

    .line 2795
    :goto_f
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v16, :cond_1a

    .line 2796
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 2800
    :cond_1a
    sget-boolean v16, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v16, :cond_1

    .line 2801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2802
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "KT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2803
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getKTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2780
    :pswitch_a
    const v16, 0x7f0204df

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2783
    :pswitch_b
    const v16, 0x7f0204ec

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2786
    :pswitch_c
    const v16, 0x7f0204e1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2789
    :pswitch_d
    const v16, 0x7f0204e3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto :goto_f

    .line 2805
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getLGTWifiActivityIcon()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2832
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1d

    .line 2833
    const-string v15, ""

    goto/16 :goto_2

    .line 2835
    :cond_1d
    const v16, 0x7f0d0291

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 2853
    :cond_1e
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2882
    .restart local v9    # "ethernetConnected":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_20

    .line 2884
    const-string v15, ""

    .line 2898
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2899
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 2895
    :cond_20
    const v16, 0x7f0d0291

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2896
    move-object v5, v15

    goto :goto_10

    .line 2902
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v16, v0

    if-nez v16, :cond_6

    if-nez v9, :cond_6

    .line 2905
    const v16, 0x7f0d0291

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2923
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 2925
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v16, v0

    if-eqz v16, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_12
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2929
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getRoamingIcon()V

    goto/16 :goto_4

    .line 2923
    :cond_22
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_11

    .line 2925
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_12

    .line 2949
    :cond_24
    sget-object v16, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_5

    .line 2951
    :cond_25
    sget-object v16, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v17, v0

    aget v16, v16, v17

    goto/16 :goto_6

    .line 2969
    :cond_26
    const-string v16, ""

    goto/16 :goto_7

    :cond_27
    const-string v16, ""

    goto/16 :goto_8

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_9

    .line 3023
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_36

    .line 3054
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2b

    .line 3055
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 3058
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2c

    .line 3059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 3063
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2d

    .line 3064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 3086
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2e

    .line 3087
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3091
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2f

    .line 3092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 3096
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_30

    .line 3097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 3100
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_31

    .line 3101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 3104
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_32

    .line 3105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 3109
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_33

    .line 3110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 3113
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v6, :cond_34

    .line 3114
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 3118
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_35

    .line 3119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 3123
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_37

    .line 3124
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 3125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3126
    .local v2, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13
    if-ge v10, v2, :cond_37

    .line 3127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3128
    .local v14, "v":Landroid/widget/TextView;
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3126
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 3049
    .end local v2    # "N":I
    .end local v10    # "i":I
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 3050
    .local v4, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_14

    .line 3133
    .end local v4    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3134
    .restart local v2    # "N":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_15
    if-ge v10, v2, :cond_39

    .line 3135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3136
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3137
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 3138
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3134
    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 3140
    :cond_38
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 3145
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_39
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CU"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3a

    .line 3146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3147
    const/4 v10, 0x0

    :goto_17
    if-ge v10, v2, :cond_3c

    .line 3148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3149
    .restart local v14    # "v":Landroid/widget/TextView;
    const v16, 0x104010e

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3147
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 3153
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3154
    const/4 v10, 0x0

    :goto_18
    if-ge v10, v2, :cond_3c

    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3156
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3157
    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 3158
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3154
    :cond_3b
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 3177
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3178
    const/4 v10, 0x0

    :goto_19
    if-ge v10, v2, :cond_3e

    .line 3179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3180
    .restart local v14    # "v":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getVisibility()I

    move-result v16

    if-nez v16, :cond_3d

    .line 3181
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3182
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3183
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3184
    const-string v16, "StatusBar.NetworkController"

    const-string v17, "update carrier label"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 3186
    :cond_3d
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 3192
    .end local v14    # "v":Landroid/widget/TextView;
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3f

    .line 3193
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterDataTypeIconId:I

    .line 3196
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_40

    .line 3197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterSettingEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterSettingEnabled:Z

    .line 3200
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_41

    .line 3201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNwboosterRilEnabled:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastNwboosterRilEnabled:Z

    .line 3206
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_42

    .line 3207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 3210
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_43

    .line 3211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastWifiActivityIconId:I

    .line 3214
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_44

    .line 3215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRoamingIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastRoamingIconId:I

    .line 3218
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_45

    .line 3219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastDataState:I

    .line 3222
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_46

    .line 3223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastBluetoothTethered:Z

    .line 3226
    :cond_46
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCarrierText()V

    .line 3227
    return-void

    .line 2659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2678
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2705
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2778
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 577
    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;)V

    .line 627
    return-void
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 617
    return-void
.end method

.method public scanForAccessPoints()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/WifiAccessPointController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiAccessPointController;->scan()V

    .line 632
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataController;->setMobileDataEnabled(Z)V

    .line 682
    return-void
.end method

.method public setStackedMode(Z)V
    .locals 1
    .param p1, "stacked"    # Z

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 816
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 641
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 655
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 13

    .prologue
    const/16 v12, 0x333

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1301
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 1305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1309
    const-string v7, "USA"

    const-string v10, "ro.csc.country_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1310
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1312
    .local v5, "mNotiManager":Landroid/app/NotificationManager;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v7, :cond_2

    .line 1313
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1314
    .local v6, "settinglaunchIntent":Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v10, "com.android.settings.Settings$AirplaneModeSettingsActivity"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1315
    const v7, 0x10008000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1316
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v7, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1318
    .local v1, "airplanePendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1319
    .local v2, "airplaneoffIntent":Landroid/content/Intent;
    const-string v7, "com.android.systemui.action.airplane_off"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/high16 v10, 0x10000000

    invoke-static {v7, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1322
    .local v3, "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1323
    .local v0, "airplaneNoti":Landroid/app/Notification$Builder;
    const v7, 0x7f0202cf

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d04a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d04a7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1329
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1330
    .local v4, "mAirplaneNotification":Landroid/app/Notification;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1331
    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 1332
    iput v8, v4, Landroid/app/Notification;->priority:I

    .line 1333
    iput v8, v4, Landroid/app/Notification;->visibility:I

    .line 1334
    const v7, 0x10101010

    iput v7, v4, Landroid/app/Notification;->commonValue:I

    .line 1336
    invoke-virtual {v5, v12, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1342
    .end local v0    # "airplaneNoti":Landroid/app/Notification$Builder;
    .end local v1    # "airplanePendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "airplaneoffIntent":Landroid/content/Intent;
    .end local v3    # "airplaneoffPendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "mAirplaneNotification":Landroid/app/Notification;
    .end local v5    # "mNotiManager":Landroid/app/NotificationManager;
    .end local v6    # "settinglaunchIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v7, v9

    .line 1301
    goto/16 :goto_0

    .line 1338
    .restart local v5    # "mNotiManager":Landroid/app/NotificationManager;
    :cond_2
    invoke-virtual {v5, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2532
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2534
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2537
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 2538
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_3

    .line 2539
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2540
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2546
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2557
    .local v1, "connectionStatus":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    .line 2558
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 2561
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 2562
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 2573
    :cond_0
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    .line 2574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    .line 2580
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 2582
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 2583
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 2584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 2585
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2586
    return-void

    .end local v1    # "connectionStatus":I
    :cond_2
    move v3, v5

    .line 2537
    goto :goto_0

    .line 2542
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 2543
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2566
    .restart local v1    # "connectionStatus":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    .line 2567
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTetherDisconnected:Z

    .line 2569
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 2144
    const-string v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2148
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2149
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2150
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    const/4 v0, 0x1

    .line 2153
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2154
    if-eqz v0, :cond_1

    .line 2155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    const/4 v0, 0x1

    .line 2162
    :cond_2
    if-eqz v0, :cond_7

    .line 2163
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_5

    .line 2164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2165
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    .line 2193
    :cond_3
    :goto_0
    return-void

    .line 2174
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2177
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-eqz v2, :cond_6

    .line 2178
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2182
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2186
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_8

    .line 2187
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mATTNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2189
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 2201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2202
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 2203
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastCB:Ljava/lang/String;

    .line 2205
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 2206
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    const/4 v0, 0x1

    .line 2209
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2210
    if-eqz v0, :cond_1

    .line 2211
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    const/4 v0, 0x1

    .line 2216
    :cond_2
    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    .line 2217
    if-eqz v0, :cond_3

    .line 2218
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    :cond_3
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    const/4 v0, 0x1

    .line 2224
    :cond_4
    if-eqz v0, :cond_7

    .line 2225
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mShowLAC:Z

    if-eqz v2, :cond_6

    .line 2226
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    const-string v3, "VIVO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 2236
    :cond_5
    :goto_0
    return-void

    .line 2230
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 2233
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1175
    const-string v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    .local v5, "stateExtra":Ljava/lang/String;
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState, sim state is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const-string v6, "ABSENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1183
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    .local v0, "absentReason":Ljava/lang/String;
    const-string v6, "PERM_DISABLED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1185
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1235
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshOperatorLogoView()V

    .line 1237
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .line 1238
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 1187
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "i$":Ljava/util/Iterator;
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1191
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    const-string v6, "CARD_IO_ERROR"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1192
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1194
    :cond_2
    const-string v6, "READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "IMSI"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "LOADED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1197
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1199
    :cond_4
    const-string v6, "LOCKED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1200
    const-string v6, "reason"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1202
    .local v4, "lockedReason":Ljava/lang/String;
    const-string v6, "PIN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1203
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1205
    :cond_5
    const-string v6, "PUK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1206
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 1215
    :cond_6
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "NETWORK_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1221
    :goto_2
    :try_start_1
    const-class v6, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v7, "PERSO_LOCKED"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1223
    :catch_0
    move-exception v2

    .line 1224
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:PERSO_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1217
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1218
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "updateSimState:NETWORK_LOCKED is not a constant in State"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1228
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "lockedReason":Ljava/lang/String;
    :cond_7
    const-string v6, "NOT_READY"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1229
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1231
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 1240
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v6, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimState:mSimState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void
.end method

.method protected updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2307
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2308
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v1, :cond_2

    .line 2309
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2310
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2311
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2315
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v1, :cond_0

    .line 2316
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2320
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v1, :cond_1

    .line 2321
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    if-eqz v1, :cond_1

    .line 2322
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiCarrierIcon:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2336
    :cond_1
    :goto_0
    return-void

    .line 2327
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_3

    .line 2328
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2329
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 2334
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0232

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2331
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    const v1, 0x7f020513

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 2332
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_4

    const v2, 0x7f02014a

    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 2331
    goto :goto_2
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2267
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2269
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 2303
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 2304
    return-void

    :cond_1
    move v4, v5

    .line 2269
    goto :goto_0

    .line 2272
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2273
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 2275
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2276
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 2278
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_6

    .line 2280
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 2281
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 2282
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 2284
    :cond_3
    if-eqz v1, :cond_5

    .line 2285
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 2290
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 2291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->checkCarrierWifiIcon()V

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 2276
    goto :goto_2

    .line 2287
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 2294
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 2295
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 2297
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2298
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 2299
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiLevel:I

    goto :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 4

    .prologue
    .line 2507
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    .line 2508
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 2509
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 2510
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v1, :cond_0

    .line 2511
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2514
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2523
    .end local v0    # "inetCondition":I
    :goto_1
    return-void

    .line 2513
    .restart local v0    # "inetCondition":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 2517
    .end local v0    # "inetCondition":I
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 2518
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0239

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2521
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_1
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2481
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2482
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 2483
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2484
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2486
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 2501
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getUpdateDataNetType()V

    .line 2503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 2504
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 2486
    goto :goto_0

    .line 2488
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2489
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 2490
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2491
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    .line 2493
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 2496
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 2498
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 2496
    goto :goto_2

    :cond_5
    move v3, v4

    .line 2498
    goto :goto_3
.end method
