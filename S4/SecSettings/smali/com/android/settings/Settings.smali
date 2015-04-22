.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$DrivingModeContentObserver;,
        Lcom/android/settings/Settings$RingerModeBroadcastReceiver;,
        Lcom/android/settings/Settings$MirrorLinkActivity;,
        Lcom/android/settings/Settings$AppNotificationSettingsActivity;,
        Lcom/android/settings/Settings$ToolboxListActivity;,
        Lcom/android/settings/Settings$ToolboxMenuActivity;,
        Lcom/android/settings/Settings$SmartBondingSettingsActivity;,
        Lcom/android/settings/Settings$SViewCoverEdgeSettingsActivity;,
        Lcom/android/settings/Settings$WeatherSettingsFragmentActivity;,
        Lcom/android/settings/Settings$SelectInfoCoverSettingsActivity;,
        Lcom/android/settings/Settings$FestivalEffectSettingsActivity;,
        Lcom/android/settings/Settings$SMotionGuideHub2014Activity;,
        Lcom/android/settings/Settings$RecommendedAppsListActivity;,
        Lcom/android/settings/Settings$AirplaneModeSettingsActivity;,
        Lcom/android/settings/Settings$ToddlerModeSettingsActivity;,
        Lcom/android/settings/Settings$SettingsEmergencyActivity;,
        Lcom/android/settings/Settings$SafetyCareDisasterActivity;,
        Lcom/android/settings/Settings$SafetyCareEmergencyModeActivity;,
        Lcom/android/settings/Settings$SafetyCareSettingsActivity;,
        Lcom/android/settings/Settings$HandwritingLanguageActivity;,
        Lcom/android/settings/Settings$AccountMenuActivity;,
        Lcom/android/settings/Settings$AccountSettingsActivity;,
        Lcom/android/settings/Settings$GeneralSettingsTab;,
        Lcom/android/settings/Settings$InputAndControlSettingsTab;,
        Lcom/android/settings/Settings$DisplaySettingsTab;,
        Lcom/android/settings/Settings$WallpaperSettingsActivity;,
        Lcom/android/settings/Settings$EasyModeAppActivity;,
        Lcom/android/settings/Settings$EasyModeActivity;,
        Lcom/android/settings/Settings$VoiceInputControlSettingsActivity;,
        Lcom/android/settings/Settings$ReadingModeSettingsActivity;,
        Lcom/android/settings/Settings$PenAirViewSettingsMenuActivity;,
        Lcom/android/settings/Settings$PenDetachmentOptionActivity;,
        Lcom/android/settings/Settings$NotificationPanelMenuActivity;,
        Lcom/android/settings/Settings$MultiWindowSettingsActivity;,
        Lcom/android/settings/Settings$ClockWidgetActivity;,
        Lcom/android/settings/Settings$TorchlightSettingsActivity;,
        Lcom/android/settings/Settings$MouseHoveringSettingsActivity;,
        Lcom/android/settings/Settings$AirViewSettingActivity;,
        Lcom/android/settings/Settings$PenAirViewHelpSettingActivity;,
        Lcom/android/settings/Settings$FingerAirViewHelpSettingActivity;,
        Lcom/android/settings/Settings$FingerAirViewSettingActivity;,
        Lcom/android/settings/Settings$ActiveKeySettingsActivity;,
        Lcom/android/settings/Settings$AirMotionSettingActivity;,
        Lcom/android/settings/Settings$SmartScrollAdvancedSettingsActivity;,
        Lcom/android/settings/Settings$SmartScreenSettingsActivity;,
        Lcom/android/settings/Settings$CloudSettingActivity;,
        Lcom/android/settings/Settings$DirectAccessActivity;,
        Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;,
        Lcom/android/settings/Settings$HomeSyncBackupAndRestoreActivity;,
        Lcom/android/settings/Settings$CloudVideoSyncSettingActivity;,
        Lcom/android/settings/Settings$CloudPictureSyncSettingActivity;,
        Lcom/android/settings/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity2;,
        Lcom/android/settings/Settings$DrivingModeSettingsActivity;,
        Lcom/android/settings/Settings$ContextualPageHelpActivity;,
        Lcom/android/settings/Settings$CustomizableKeySettingsActivity;,
        Lcom/android/settings/Settings$HomeSettingsActivity;,
        Lcom/android/settings/Settings$TRoamingSettingsActivity;,
        Lcom/android/settings/Settings$GlobalRoamingSettingsActivity;,
        Lcom/android/settings/Settings$SimChangeAlertSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceProfileSettingsActivity;,
        Lcom/android/settings/Settings$MyPlaceSettingsActivity;,
        Lcom/android/settings/Settings$NfcSettingsActivity;,
        Lcom/android/settings/Settings$PowerSettingsActivity;,
        Lcom/android/settings/Settings$PersonalPageSettingsActivity;,
        Lcom/android/settings/Settings$EasyModeSettingsActivity;,
        Lcom/android/settings/Settings$PenHelpFragmentActivity;,
        Lcom/android/settings/Settings$PenSettingsMenuActivity;,
        Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/settings/Settings$DualClockSettingActivity;,
        Lcom/android/settings/Settings$SBeamSettingsActivity;,
        Lcom/android/settings/Settings$NearbySettingsActivity;,
        Lcom/android/settings/Settings$MotionSettingsActivity;,
        Lcom/android/settings/Settings$ZenModeSettingsActivity;,
        Lcom/android/settings/Settings$PrintJobSettingsActivity;,
        Lcom/android/settings/Settings$PrintSettingsActivity;,
        Lcom/android/settings/Settings$PaymentSettingsActivity;,
        Lcom/android/settings/Settings$TrustedCredentialsSettingsActivity;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$NotificationAccessSettingsActivity;,
        Lcom/android/settings/Settings$UserSettingsActivity;,
        Lcom/android/settings/Settings$DreamSettingsActivity;,
        Lcom/android/settings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$WifiShareProfileActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$OneHandSideSoftKeyFragmentActivity;,
        Lcom/android/settings/Settings$OneHandEditMenuActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$DockSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$ColorChipReportActivity;,
        Lcom/android/settings/Settings$MagnifierSettingsActivity;,
        Lcom/android/settings/Settings$CaptioningSettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$AppOpsDetailsActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$BatterySaverSettingsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$PowerSavingModeSettings2014Activity;,
        Lcom/android/settings/Settings$UltraPowerSavingModeActivity;,
        Lcom/android/settings/Settings$PowerSavingMode2014Activity;,
        Lcom/android/settings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/settings/Settings$LockScreenSettingsActivity;,
        Lcom/android/settings/Settings$LockscreenMenuActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$ApnSettingsActivity;,
        Lcom/android/settings/Settings$UsageAccessSettingsActivity;,
        Lcom/android/settings/Settings$VoiceInputSettingsActivity;,
        Lcom/android/settings/Settings$NotificationAppListActivity;,
        Lcom/android/settings/Settings$NotificationSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiApSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$EthernetSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$ToddlerModeObserver;,
        Lcom/android/settings/Settings$HeaderAdapter;,
        Lcom/android/settings/Settings$NoHomeDialogFragment;,
        Lcom/android/settings/Settings$SettingsTabListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceProvisioned:I

.field private static mDirectSettingEnabler:Z

.field private static mFullModeinSmallTablet:Z

.field private static mIsFromSearch:Z

.field private static mSearchDepthCounter:I

.field private static mSearchHeaderID:J

.field private static mSearchSettingValue:I

.field private static mWifiSummaryId:I

.field private static misFromSettingsMainActivity:Z

.field private static sSalesCode:Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_KNOX:[I

.field private SETTINGS_FOR_RESTRICTED:[I

.field private SettingsInAccountTab:[Ljava/lang/String;

.field private SettingsInApplicationsTab_2014:[Ljava/lang/String;

.field private SettingsInConnectionTab:[Ljava/lang/String;

.field private SettingsInConnectionTab_2013:[Ljava/lang/String;

.field private SettingsInDeviceTab:[Ljava/lang/String;

.field private SettingsInDeviceTab_2014:[Ljava/lang/String;

.field private SettingsInDisplay:[Ljava/lang/String;

.field private SettingsInGeneralTab:[Ljava/lang/String;

.field private SettingsInGeneralTab_2014:[Ljava/lang/String;

.field private SettingsInInputandControlTab:[Ljava/lang/String;

.field private SettingsInMoreTab:[Ljava/lang/String;

.field am:Landroid/media/AudioManager;

.field private currentSoundProfile:I

.field private drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

.field filter:Landroid/content/IntentFilter;

.field private isKioskContainer:Z

.field private isKioskPersonal:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAccountTabView:Landroid/view/View;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field mApplicationsTabView:Landroid/view/View;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field mConnectionTabView:Landroid/view/View;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field mDisplayTabView:Landroid/view/View;

.field private mDualFoldertype:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFourthPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentClass:Ljava/lang/String;

.field mGeneralTabView:Landroid/view/View;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field mInputTabView:Landroid/view/View;

.field private mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

.field private mInternationalRoamingBlocked:Z

.field private final mJPNReceiver:Landroid/content/BroadcastReceiver;

.field private mJustCreated:Z

.field private mKnoxCustomSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mMSADialog:Landroid/app/AlertDialog$Builder;

.field mMoreTabView:Landroid/view/View;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneTabStyle:Z

.field mPrevSelectedActionBarIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSecondPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondSearchFragmentBundle:Landroid/os/Bundle;

.field mTabletTabStyle:Z

.field private mTetheredData:I

.field private mThirdPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevSoundProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 338
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    .line 363
    sput-boolean v1, Lcom/android/settings/Settings;->sShowNoHomeNotice:Z

    .line 385
    sput v2, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 390
    sput-boolean v1, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 721
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 723
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 724
    sput-boolean v1, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 726
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 729
    sput v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 730
    sput-boolean v1, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 731
    sput-boolean v1, Lcom/android/settings/Settings;->misFromSettingsMainActivity:Z

    .line 2037
    const/16 v0, 0x9e

    new-array v0, v0, [Ljava/lang/String;

    const-class v3, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-class v1, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/settings/myprofile/PersonalMessageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/settings/toolbox/ToolboxList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.settings.ethernet.EthernetSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/android/settings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.settings.notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/android/settings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.android.settings.fingerprint.FingerPrintManagerUI"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.android.settings.fingerprint.PaypalPayment"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.android.settings.fingerprint.FingerprintWebsignin"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/android/settings/DrivingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/android/settings/myplace/MyPlaceSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-class v2, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-class v2, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-class v2, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-class v2, Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-class v2, Lcom/android/settings/OneHandEditMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-class v2, Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-class v2, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-class v2, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-class v2, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-class v2, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-class v2, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-class v2, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-class v2, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-class v2, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-class v2, Lcom/android/settings/AccountMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-class v2, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-class v2, Lcom/android/settings/ToddlerModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-class v2, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-class v2, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-class v2, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-class v2, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-class v2, Lcom/android/settings/FontMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-class v2, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-class v2, Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-class v2, Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-class v2, Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-class v2, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-class v2, Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-class v2, Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-class v2, Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-class v2, Lcom/android/settings/DockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-class v2, Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-class v2, Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-class v2, Lcom/android/settings/WeatherSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-class v2, Lcom/android/settings/MasterClear;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-class v2, Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-class v2, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-class v2, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-class v2, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-class v2, Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-class v2, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-class v2, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-class v2, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-class v2, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-class v2, Lcom/android/settings/LedIndicatorSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-class v2, Lcom/android/settings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-class v2, Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-class v2, Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-class v2, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-class v2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-class v2, Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-class v2, Lcom/android/settings/SmartcardCredentialSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-class v2, Lcom/android/settings/ReadingMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "com.android.settings.ContextualPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "com.android.settings.motion.MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "com.android.settings.AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "com.android.settings.colorblind.ColorChipReport"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "com.android.settings.safetycare.SafetyCareEmergencyMode"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "com.android.settings.safetycare.SafetyCareDisaster"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "com.android.settings.SettingsEmergencySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "com.android.settings.DCMHomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-class v2, Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-class v2, Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-class v2, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-class v2, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-class v2, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-class v2, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-class v2, Lcom/android/settings/ApplicationsSettingsVZW;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-class v2, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-class v2, Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-class v2, Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-class v2, Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "com.android.settings.TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "com.android.settings.GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-class v2, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-class v2, Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-class v2, Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-class v2, Lcom/android/settings/BlockSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-class v2, Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-class v2, Lcom/android/settings/KidsHomeMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-class v2, Lcom/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "com.android.settings.myprofile.ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "com.android.settings.dualclock.DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "com.android.settings.mirrorlink.MirrorLink"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-class v2, Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "com.android.settings.festivaleffect.FestivalEffectSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-class v2, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-class v2, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 338
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 335
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 359
    iput v3, p0, Lcom/android/settings/Settings;->MHS_REQUEST:I

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    .line 378
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mInternationalRoamingBlocked:Z

    .line 386
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 387
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 394
    const/16 v0, 0x69

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 514
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/Settings;->SETTINGS_FOR_KNOX:[I

    .line 582
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/Settings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    .line 666
    iput-boolean v3, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    .line 667
    iput-boolean v3, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    .line 671
    iput v3, p0, Lcom/android/settings/Settings;->mTetheredData:I

    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 682
    iput-boolean v4, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    .line 683
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/android/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 708
    new-instance v0, Lcom/android/settings/Settings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$3;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    .line 718
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->filter:Landroid/content/IntentFilter;

    .line 725
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 735
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 738
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFirstPage:Ljava/util/List;

    .line 752
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mSecondPage:Ljava/util/List;

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mThirdPage:Ljava/util/List;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mFourthPage:Ljava/util/List;

    .line 756
    new-array v0, v7, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    .line 763
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v5

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v6

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TagsConnectingDevices"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    .line 783
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DateTimeSettings"

    aput-object v1, v0, v3

    const-string v1, "LocalePicker"

    aput-object v1, v0, v4

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v5

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v6

    const-string v1, "SpellCheckersSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UserDictionarySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LockScreenSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LockscreenMenuSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LedIndicatorSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ContextualPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ContextualPageHelp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "InformationTicker"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FingerAirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "MouseHoveringSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PenHovering"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PenHelpFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PersonalVibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ReadingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CustomizableKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "TorchlightSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "VoiceInputControlSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    .line 827
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v3

    const-string v1, "BackupAssistantPlusSettings"

    aput-object v1, v0, v4

    const-string v1, "CloudPhotosSyncFragment"

    aput-object v1, v0, v5

    const-string v1, "CloudVideosSyncFragment"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    .line 837
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DeviceInfoSettings"

    aput-object v1, v0, v3

    const-string v1, "ManageApplications"

    aput-object v1, v0, v4

    const-string v1, "LocationSettings"

    aput-object v1, v0, v5

    const-string v1, "SecuritySettings"

    aput-object v1, v0, v6

    const-string v1, "notification.NotificationSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    .line 859
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WirelessSettings"

    aput-object v1, v0, v3

    const-string v1, "WifiSettings"

    aput-object v1, v0, v4

    const-string v1, "AdvancedWifiSettings"

    aput-object v1, v0, v5

    const-string v1, "WifiApSettings"

    aput-object v1, v0, v6

    const-string v1, "BluetoothSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TetherSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WifiP2pSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WifiP2pHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NearbySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PrintSettingsFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "VpnSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LocationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SBeam"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TagsConnectingDevices"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WifiDisplaySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DataUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GlobalRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TRoamingSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PaymentSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    .line 882
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "notification.NotificationSettings"

    aput-object v1, v0, v3

    const-string v1, "DisplaySettings"

    aput-object v1, v0, v4

    const-string v1, "ReadingMode"

    aput-object v1, v0, v5

    const-string v1, "LedIndicatorSettings"

    aput-object v1, v0, v6

    const-string v1, "LockscreenMenuSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "WallpaperSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "FontMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RecommendedAppsList"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CaptionPropertiesFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CallFeaturesSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AssistantMenuPreferenceFragment"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ToolboxMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ToolboxList"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    .line 903
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "InputMethodAndLanguageSettings"

    aput-object v1, v0, v3

    const-string v1, "KeyboardLayoutPickerFragment"

    aput-object v1, v0, v4

    const-string v1, "VoiceInputControlSettings"

    aput-object v1, v0, v5

    const-string v1, "HandwritingSearch"

    aput-object v1, v0, v6

    const-string v1, "DrivingModeSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SPenSettingsMenu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OneHandSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HandMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HandwritingLanguagePreference"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    .line 920
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HomeSettings"

    aput-object v1, v0, v3

    const-string v1, "AccountMenu"

    aput-object v1, v0, v4

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v5

    const-string v1, "CloudSetting"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SafetyAssuranceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ManageApplications"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PowerSavingMode2014"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PowerSavingModeUltra"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    .line 952
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UserDictionarySettings"

    aput-object v1, v0, v3

    const-string v1, "LockScreenSettings"

    aput-object v1, v0, v4

    const-string v1, "DisplaySettings"

    aput-object v1, v0, v5

    const-string v1, "LockscreenMenuSettings"

    aput-object v1, v0, v6

    const-string v1, "BlockSettings"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LedIndicatorSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ContextualPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ContextualPageHelp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AccessibilitySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "DrivingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DreamSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "InformationTicker"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NotificationPanelMenu"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "AirMotionSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FingerAirViewSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MouseHoveringSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PenHovering"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PenHelpFragment"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PenSettingsMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "PersonalVibration"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ReadingMode"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CustomizableKeySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DualClockSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "HomeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EasyModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ClockWidgetPreference"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SmartScreenSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SmartScrollAdvancedSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TorchlightSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "VoiceInputControlSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "notification.NotificationSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "MultiWindowSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "FingerprintSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "FingerPrintManagerUI"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ToolboxMenu"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "ToolboxList"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "RecommendedAppsList"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SMotionGuideHub2014"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    .line 995
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HomeSettings"

    aput-object v1, v0, v3

    const-string v1, "AccountMenu"

    aput-object v1, v0, v4

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v5

    const-string v1, "CloudSetting"

    aput-object v1, v0, v6

    const-string v1, "CloudSettingsMainFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PersonalPageSettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SafetyAssuranceSetting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BlockSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "PowerUsageSummary"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MenuPowerSavingModeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "deviceinfo.Memory"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "SecuritySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TrustedCredentialsSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PrivacySettings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DeviceAdminSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "CryptKeeperSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "UsbSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "DevelopmentSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DeviceInfoSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "NotificationAccessSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PowerSavingMode2014"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PowerSavingModeUltra"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "InputMethodAndLanguageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "KeyboardLayoutPickerFragment"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    .line 1031
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ManageApplications"

    aput-object v1, v0, v3

    const-string v1, "LaunchApplication"

    aput-object v1, v0, v4

    const-string v1, "ApplicationsSettingsVZW"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    .line 5788
    new-instance v0, Lcom/android/settings/Settings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$8;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 5964
    new-instance v0, Lcom/android/settings/Settings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$9;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    .line 6481
    new-instance v0, Lcom/android/settings/Settings$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/Settings$10;-><init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    .line 6509
    return-void

    .line 394
    :array_0
    .array-data 4
        0x7f100698
        0x7f100655
        0x7f100657
        0x7f100656
        0x7f10065e
        0x7f100659
        0x7f10065f
        0x7f100667
        0x7f10065c
        0x7f1006a0
        0x7f1006a1
        0x7f1006f4
        0x7f1006ae
        0x7f1006a7
        0x7f1006a3
        0x7f1006a2
        0x7f100688
        0x7f1006d8
        0x7f1006d9
        0x7f1006a6
        0x7f1006da
        0x7f1006db
        0x7f1006dc
        0x7f10069b
        0x7f1006af
        0x7f100640
        0x7f1006b0
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f100677
        0x7f100647
        0x7f100648
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067e
        0x7f100679
        0x7f100695
        0x7f10063e
        0x7f10063f
        0x7f10067f
        0x7f100680
        0x7f100683
        0x7f100681
        0x7f10066c
        0x7f10067a
        0x7f100646
        0x7f100646
        0x7f10065b
        0x7f1006e4
        0x7f100658
        0x7f1006e5
        0x7f100666
        0x7f100661
        0x7f100668
        0x7f1006e6
        0x7f10066b
        0x7f10066e
        0x7f10066d
        0x7f1006e7
        0x7f1006ab
        0x7f1006ac
        0x7f10068a
        0x7f10064a
        0x7f10068e
        0x7f10068f
        0x7f100690
        0x7f1006e9
        0x7f100693
        0x7f1006d1
        0x7f1006b2
        0x7f100645
        0x7f100691
        0x7f100694
        0x7f100686
        0x7f1006eb
        0x7f100697
        0x7f1006b6
        0x7f100641
        0x7f10063c
        0x7f1006ea
        0x7f100699
        0x7f10069a
        0x7f10069c
        0x7f1006ec
        0x7f10069e
        0x7f1006ed
        0x7f100662
        0x7f10069f
        0x7f100692
        0x7f1006ee
        0x7f10068d
        0x7f10069d
        0x7f1006ce
        0x7f100669
        0x7f100671
        0x7f10066a
        0x7f10065d
        0x7f100685
        0x7f1006f2
        0x7f1006a4
        0x7f100644
        0x7f100654
    .end array-data

    .line 514
    :array_1
    .array-data 4
        0x7f100655
        0x7f100657
        0x7f100667
        0x7f10065c
        0x7f1006a0
        0x7f1006a1
        0x7f1006a7
        0x7f1006a3
        0x7f1006a2
        0x7f100688
        0x7f1006d8
        0x7f1006d9
        0x7f1006a6
        0x7f1006da
        0x7f1006db
        0x7f1006dc
        0x7f10069b
        0x7f1006af
        0x7f1006b0
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f100677
        0x7f100647
        0x7f100648
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067e
        0x7f10063e
        0x7f100640
        0x7f10063f
        0x7f10067f
        0x7f100680
        0x7f100681
        0x7f10065b
        0x7f1006e4
        0x7f100658
        0x7f1006e5
        0x7f100661
        0x7f10068e
        0x7f10068f
        0x7f100690
        0x7f100693
        0x7f1006b2
        0x7f100691
        0x7f1006ea
        0x7f100699
        0x7f10069a
        0x7f10069c
        0x7f1006ec
        0x7f100692
        0x7f10069d
        0x7f1006ce
        0x7f100644
        0x7f1006df
        0x7f1006de
        0x7f100696
        0x7f100684
        0x7f10069f
        0x7f1006dd
        0x7f100654
    .end array-data

    .line 582
    :array_2
    .array-data 4
        0x7f100655
        0x7f100657
        0x7f100667
        0x7f1006a1
        0x7f1006a3
        0x7f1006a6
        0x7f100674
        0x7f100689
        0x7f100675
        0x7f1006cb
        0x7f100677
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067f
        0x7f100680
        0x7f100681
        0x7f10065b
        0x7f100690
        0x7f100646
        0x7f1006be
        0x7f1006ca
        0x7f1006cc
        0x7f10069c
        0x7f1006cd
        0x7f10069d
        0x7f1006b6
        0x7f10069f
        0x7f1006d1
        0x7f1006d6
        0x7f1006ce
        0x7f1006d4
        0x7f1006d5
        0x7f100659
        0x7f100656
        0x7f10065e
        0x7f1006e4
        0x7f100658
        0x7f100683
        0x7f100667
        0x7f10069b
        0x7f100669
        0x7f100671
        0x7f10066a
        0x7f1006e5
        0x7f10065a
        0x7f1006e1
        0x7f100694
        0x7f10069f
        0x7f1006d3
        0x7f1006b9
        0x7f1006ba
        0x7f10068e
        0x7f10068f
        0x7f100697
        0x7f1006b1
        0x7f1006bc
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/Settings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Z

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/Settings;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/settings/Settings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1500()Landroid/content/Context;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/Settings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 335
    sget-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 335
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 335
    sget-boolean v0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 335
    sput-boolean p0, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$2300()J
    .locals 2

    .prologue
    .line 335
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 335
    sget v0, Lcom/android/settings/Settings;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    .prologue
    .line 335
    sget v0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 335
    sput p0, Lcom/android/settings/Settings;->mWifiSummaryId:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/settings/Settings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget v0, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/Settings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/settings/Settings;->currentSoundProfile:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/Settings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget v0, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/settings/Settings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 335
    iput p1, p0, Lcom/android/settings/Settings;->prevSoundProfile:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Settings;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/Settings;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/Settings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    return-void
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 5934
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5935
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5936
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5937
    sget-object v1, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5939
    :cond_0
    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 3858
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3860
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 3892
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 3861
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3862
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3863
    :cond_2
    iget v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchTopLevelHeaderId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 3866
    :cond_3
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3867
    iget-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 3880
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3881
    .local v2, "parentHeaderTitleRes":I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3882
    .local v1, "parentFragmentClass":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3883
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3884
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3885
    if-eqz v2, :cond_0

    .line 3886
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3889
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "parentFragmentClass":Ljava/lang/String;
    .end local v2    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 5943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5944
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5946
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5947
    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5948
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5949
    return-object v0
.end method

.method private getSelectedTabFromFragmentClass()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5497
    sget-boolean v5, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSelectedTabFromFragmentClass() mFragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 5500
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    const-string v6, "DCMHomeSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5501
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5502
    new-instance v2, Ljava/lang/Long;

    const-wide/32 v4, 0x7f100685

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 5503
    sput v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 5594
    :cond_1
    :goto_0
    return v1

    .line 5506
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 5507
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5508
    :cond_4
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v2

    .line 5509
    goto :goto_0

    .line 5506
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5513
    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_b

    .line 5514
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5515
    :cond_9
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5513
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5520
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 5521
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5522
    :cond_d
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v1, v3

    .line 5523
    goto/16 :goto_0

    .line 5520
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5527
    :cond_10
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5528
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 5529
    :cond_12
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v1, v4

    .line 5530
    goto/16 :goto_0

    .line 5527
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5533
    .end local v0    # "i":I
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5535
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1a

    .line 5536
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5537
    :cond_17
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move v1, v2

    .line 5538
    goto/16 :goto_0

    .line 5535
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 5542
    :cond_1a
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1e

    .line 5543
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5544
    :cond_1c
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5542
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5549
    :cond_1e
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 5550
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5551
    :cond_20
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move v1, v3

    .line 5552
    goto/16 :goto_0

    .line 5549
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 5556
    :cond_23
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5557
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5558
    :cond_25
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v1, v4

    .line 5559
    goto/16 :goto_0

    .line 5556
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 5564
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2d

    .line 5565
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 5566
    :cond_2a
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move v1, v2

    .line 5567
    goto/16 :goto_0

    .line 5564
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 5571
    :cond_2d
    const/4 v0, 0x0

    :goto_a
    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_31

    .line 5572
    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    :cond_2e
    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/Settings;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 5573
    :cond_2f
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5571
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5578
    :cond_31
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 5579
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/Settings;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 5580
    :cond_33
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_34

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v1, v3

    .line 5581
    goto/16 :goto_0

    .line 5578
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5585
    :cond_36
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 5586
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/Settings;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 5587
    :cond_38
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_39

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v1, v4

    .line 5588
    goto/16 :goto_0

    .line 5585
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    move v1, v2

    .line 5594
    goto/16 :goto_0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5476
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 5477
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 5478
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5479
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5480
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 5484
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 22
    .param p2, "headerIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3729
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v7

    .line 3730
    .local v7, "accountTypes":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3731
    .local v5, "accountHeaders":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v9, v7

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_9

    aget-object v6, v9, v12

    .line 3732
    .local v6, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 3735
    .local v13, "label":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 3736
    const-string v19, "com.android.tmo_myphonebook"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3737
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3742
    :cond_0
    if-nez v13, :cond_2

    .line 3731
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3746
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 3747
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v0, v8

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    const/4 v15, 0x1

    .line 3751
    .local v15, "skipToAccount":Z
    :goto_2
    sget-object v19, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/SnsAccountManager;->getSSOAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v18

    .line 3752
    .local v18, "ssoAccount":Landroid/accounts/Account;
    if-eqz v18, :cond_4

    .line 3753
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3756
    sget-object v19, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/settings/accounts/AccountCommon;->getSnsAccountMgr(Landroid/content/Context;)Lcom/android/settings/accounts/SnsAccountManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/settings/accounts/SnsAccountManager;->getSnsAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3757
    .local v16, "snsAccountType":Ljava/lang/String;
    sget-object v19, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v17

    .line 3758
    .local v17, "snsAccounts":[Landroid/accounts/Account;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 3759
    :cond_3
    const/4 v15, 0x0

    .line 3764
    .end local v16    # "snsAccountType":Ljava/lang/String;
    .end local v17    # "snsAccounts":[Landroid/accounts/Account;
    :cond_4
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3765
    .local v4, "accHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 3766
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 3767
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 3769
    :cond_5
    if-eqz v15, :cond_8

    .line 3770
    const v19, 0x7f0a0c4d

    move/from16 v0, v19

    iput v0, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 3771
    const v19, 0x7f0a0c4d

    move/from16 v0, v19

    iput v0, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 3772
    const-class v19, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3773
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3775
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account"

    const/16 v21, 0x0

    aget-object v21, v8, v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3777
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account"

    const/16 v21, 0x0

    aget-object v21, v8, v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3792
    :cond_6
    :goto_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3747
    .end local v4    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v15    # "skipToAccount":Z
    .end local v18    # "ssoAccount":Landroid/accounts/Account;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 3780
    .restart local v4    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .restart local v15    # "skipToAccount":Z
    .restart local v18    # "ssoAccount":Landroid/accounts/Account;
    :cond_8
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 3781
    iput-object v13, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 3782
    const-class v19, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3783
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3784
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->isMultiPane()Z

    move-result v19

    if-nez v19, :cond_6

    .line 3788
    iget-object v0, v4, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "account_label"

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3797
    .end local v4    # "accHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v8    # "accounts":[Landroid/accounts/Account;
    .end local v13    # "label":Ljava/lang/CharSequence;
    .end local v15    # "skipToAccount":Z
    .end local v18    # "ssoAccount":Landroid/accounts/Account;
    :cond_9
    new-instance v19, Lcom/android/settings/Settings$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$6;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3804
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 3805
    .local v10, "header":Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v11, p2, 0x1

    .end local p2    # "headerIndex":I
    .local v11, "headerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v11

    .line 3806
    .end local v11    # "headerIndex":I
    .restart local p2    # "headerIndex":I
    goto :goto_4

    .line 3807
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 3808
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 3809
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    .line 3811
    :cond_b
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 5754
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5756
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 5757
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 5758
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 5760
    :cond_0
    sget-boolean v3, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "Settings"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5767
    :cond_1
    :goto_0
    return v2

    .line 5764
    :catch_0
    move-exception v0

    .line 5765
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Settings"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5767
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOrangeCustomer()Z
    .locals 1

    .prologue
    .line 5467
    const/4 v0, 0x0

    return v0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 5488
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 5489
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 5490
    const/4 v1, 0x1

    .line 5492
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 3853
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSORY"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 3714
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100659

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3716
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10065b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100686

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3719
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10067e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3720
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100679

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100682

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    iget-object v0, p0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    return-void
.end method

.method private setEmbeddedTabs()V
    .locals 7

    .prologue
    .line 5598
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 5599
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x0

    .line 5601
    .local v1, "setHasEmbeddedTabs":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setHasEmbeddedTabs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5602
    if-eqz v1, :cond_0

    .line 5603
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 5604
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5611
    :cond_0
    :goto_0
    return-void

    .line 5609
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5608
    :catch_1
    move-exception v2

    goto :goto_0

    .line 5607
    :catch_2
    move-exception v2

    goto :goto_0

    .line 5606
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 3914
    move-object v0, p1

    .line 3915
    .local v0, "switchId":Ljava/lang/String;
    const-string v1, "com.android.settings.SPenSettingsMenu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3916
    const-string v0, "com.android.settings.PenSettingsMenu"

    .line 3918
    :cond_0
    return-object v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 2235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 2236
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 2238
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 2321
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2323
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2324
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 2326
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 2327
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2328
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2329
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2330
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2331
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2332
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2334
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 2335
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 2337
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2338
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2340
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 2342
    :catch_0
    move-exception v3

    .line 2343
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchTopLevelHeaderId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 3895
    const/4 v0, -0x1

    .line 3896
    .local v0, "switchId":I
    packed-switch p1, :pswitch_data_0

    .line 3901
    move v0, p1

    .line 3905
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3906
    const v1, 0x7f10069b

    if-ne p1, v1, :cond_0

    .line 3907
    const v0, 0x7f100675

    .line 3910
    :cond_0
    return v0

    .line 3898
    :pswitch_0
    const v0, 0x7f1006af

    .line 3899
    goto :goto_0

    .line 3896
    :pswitch_data_0
    .packed-switch 0x7f10063e
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2719
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v42, v0

    const-string v43, "show"

    sget-object v44, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v45, "eng"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    invoke-interface/range {v42 .. v44}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 2722
    .local v37, "showDev":Z
    const/4 v13, 0x0

    .line 2724
    .local v13, "i":I
    const-string v42, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/UserManager;

    .line 2725
    .local v40, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->clear()V

    .line 2728
    const/16 v28, 0x0

    .line 2729
    .local v28, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v27

    .line 2730
    .local v27, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v27, :cond_0

    .line 2731
    invoke-virtual/range {v27 .. v27}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v28

    .line 2735
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_fa

    .line 2736
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceActivity$Header;

    .line 2738
    .local v11, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v42, v0

    move-wide/from16 v0, v42

    long-to-int v14, v0

    .line 2741
    .local v14, "id":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    const/16 v43, 0x64

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    const/16 v20, 0x1

    .line 2745
    .local v20, "isKnoxUser":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    if-nez v42, :cond_1

    .line 2747
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 2749
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_2

    .line 2751
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 2755
    :cond_2
    const/16 v34, 0x0

    .line 2756
    .local v34, "removed":Z
    if-eqz v28, :cond_3

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2758
    .local v9, "element":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 2759
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 2761
    .local v41, "val":I
    and-int v42, v41, v28

    if-eqz v42, :cond_3

    .line 2763
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2764
    const/16 v34, 0x1

    .line 2768
    .end local v9    # "element":Ljava/lang/Integer;
    .end local v41    # "val":I
    :cond_3
    if-nez v34, :cond_0

    .line 2770
    const v42, 0x7f100686

    move/from16 v0, v42

    if-ne v14, v0, :cond_e

    .line 2771
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "shopdemo"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 2774
    .local v36, "shop":I
    const/4 v5, 0x1

    .line 2775
    .local v5, "bEnable":Z
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v43, "enterprise_policy"

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2776
    .local v29, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v29, :cond_4

    invoke-virtual/range {v29 .. v29}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v42

    if-nez v42, :cond_4

    .line 2777
    const/4 v5, 0x0

    .line 2779
    :cond_4
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_5

    const-string v42, "Settings"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_5
    const/16 v42, 0x1

    move/from16 v0, v36

    move/from16 v1, v42

    if-eq v0, v1, :cond_6

    if-nez v5, :cond_7

    .line 2782
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3651
    .end local v5    # "bEnable":Z
    .end local v29    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v36    # "shop":I
    :cond_7
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_f7

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    if-ne v0, v11, :cond_f7

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x7f10063d

    cmp-long v42, v42, v44

    if-eqz v42, :cond_f7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-static {v0, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v42

    if-nez v42, :cond_f7

    if-nez v20, :cond_f7

    .line 3654
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3669
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    if-nez v42, :cond_9

    .line 3671
    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 3673
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/HashMap;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_a

    .line 3675
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 3679
    :cond_a
    if-eqz v28, :cond_b

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3681
    .restart local v9    # "element":Ljava/lang/Integer;
    if-eqz v9, :cond_b

    .line 3682
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 3684
    .restart local v41    # "val":I
    and-int v42, v41, v28

    if-eqz v42, :cond_b

    .line 3686
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3693
    .end local v9    # "element":Ljava/lang/Integer;
    .end local v41    # "val":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    if-ne v0, v11, :cond_0

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v42, v0

    if-nez v42, :cond_c

    invoke-static {v11}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v42

    if-eqz v42, :cond_c

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x7f10063d

    cmp-long v42, v42, v44

    if-eqz v42, :cond_c

    .line 3698
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3699
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v42

    if-eqz v42, :cond_c

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_c

    iget-wide v0, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v42, v0

    const-wide/32 v44, 0x7f100645

    cmp-long v42, v42, v44

    if-nez v42, :cond_c

    .line 3700
    const/16 v42, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3703
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v42, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3704
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2741
    .end local v20    # "isKnoxUser":Z
    .end local v34    # "removed":Z
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2783
    .restart local v20    # "isKnoxUser":Z
    .restart local v34    # "removed":Z
    :cond_e
    const v42, 0x7f1006a6

    move/from16 v0, v42

    if-ne v14, v0, :cond_11

    .line 2784
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_f

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_f

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_f

    .line 2786
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2787
    :cond_f
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_10

    .line 2788
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2789
    :cond_10
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2790
    const v42, 0x7f0a1197

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 2792
    :cond_11
    const v42, 0x7f1006da

    move/from16 v0, v42

    if-ne v14, v0, :cond_13

    .line 2793
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_12

    .line 2794
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2795
    :cond_12
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2796
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2798
    :cond_13
    const v42, 0x7f1006db

    move/from16 v0, v42

    if-ne v14, v0, :cond_17

    .line 2799
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_14

    .line 2800
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2801
    :cond_14
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_15

    .line 2802
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2804
    :cond_15
    const-string v42, "ro.product.device"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2805
    .local v7, "device":Ljava/lang/String;
    if-eqz v7, :cond_16

    const-string v42, "ms01"

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_16

    const/16 v42, 0x1

    :goto_4
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 2806
    .local v21, "isMS01":Ljava/lang/Boolean;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-eqz v42, :cond_7

    if-eqz v20, :cond_7

    .line 2807
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2805
    .end local v21    # "isMS01":Ljava/lang/Boolean;
    :cond_16
    const/16 v42, 0x0

    goto :goto_4

    .line 2809
    .end local v7    # "device":Ljava/lang/String;
    :cond_17
    const v42, 0x7f1006dc

    move/from16 v0, v42

    if-ne v14, v0, :cond_19

    .line 2810
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_18

    .line 2811
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2812
    :cond_18
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2813
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2815
    :cond_19
    const v42, 0x7f1006a2

    move/from16 v0, v42

    if-ne v14, v0, :cond_1a

    .line 2816
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.feature.multiwindow"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2817
    .local v3, "UseMultiWindow":Z
    if-nez v3, :cond_7

    .line 2818
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2820
    .end local v3    # "UseMultiWindow":Z
    :cond_1a
    const v42, 0x7f100675

    move/from16 v0, v42

    if-ne v14, v0, :cond_1b

    .line 2821
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2822
    const v42, 0x7f0a1e14

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 2824
    :cond_1b
    const v42, 0x7f1006a1

    move/from16 v0, v42

    if-ne v14, v0, :cond_1e

    .line 2825
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v42

    if-eqz v42, :cond_1c

    .line 2826
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2829
    :cond_1c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.app.wallpaperchooser"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 2830
    .local v2, "Info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_7

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v42, v0

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-le v0, v1, :cond_7

    .line 2831
    const/16 v42, 0x0

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2832
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    if-nez v42, :cond_1d

    .line 2833
    new-instance v42, Landroid/content/Intent;

    invoke-direct/range {v42 .. v42}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2835
    :cond_1d
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    const-string v43, "com.sec.android.app.wallpaperchooser"

    const-string v44, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual/range {v42 .. v44}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2836
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    const v43, 0x10008000

    invoke-virtual/range {v42 .. v43}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 2838
    .end local v2    # "Info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v42

    goto/16 :goto_2

    .line 2842
    :cond_1e
    const v42, 0x7f1006dd

    move/from16 v0, v42

    if-ne v14, v0, :cond_1f

    .line 2843
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2844
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2846
    :cond_1f
    const v42, 0x7f10063d

    move/from16 v0, v42

    if-ne v14, v0, :cond_22

    .line 2847
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v42

    if-eqz v42, :cond_21

    :cond_20
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2848
    :cond_21
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2850
    :cond_22
    const v42, 0x7f1006e5

    move/from16 v0, v42

    if-ne v14, v0, :cond_23

    .line 2852
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2854
    :cond_23
    const v42, 0x7f100694

    move/from16 v0, v42

    if-ne v14, v0, :cond_24

    .line 2855
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->needsDockSettings()Z

    move-result v42

    if-nez v42, :cond_7

    .line 2856
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2857
    :cond_24
    const v42, 0x7f100673

    move/from16 v0, v42

    if-eq v14, v0, :cond_7

    const v42, 0x7f10067b

    move/from16 v0, v42

    if-eq v14, v0, :cond_7

    .line 2859
    const v42, 0x7f100657

    move/from16 v0, v42

    if-ne v14, v0, :cond_25

    .line 2861
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "android.hardware.wifi"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 2862
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2865
    :cond_25
    const v42, 0x7f100656

    move/from16 v0, v42

    if-ne v14, v0, :cond_28

    .line 2866
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_26

    .line 2867
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2870
    :cond_26
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.oem.smartwifisupport"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    .line 2871
    .local v4, "appState":I
    const/16 v42, 0x2

    move/from16 v0, v42

    if-ne v4, v0, :cond_7

    .line 2872
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2874
    .end local v4    # "appState":I
    :catch_1
    move-exception v15

    .line 2875
    .local v15, "ie":Ljava/lang/IllegalArgumentException;
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_27

    const-string v42, "Settings"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :cond_27
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2880
    .end local v15    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_28
    const v42, 0x7f1006e4

    move/from16 v0, v42

    if-ne v14, v0, :cond_29

    .line 2883
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2885
    :cond_29
    const v42, 0x7f100658

    move/from16 v0, v42

    if-ne v14, v0, :cond_2a

    .line 2899
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2901
    :cond_2a
    const v42, 0x7f100666

    move/from16 v0, v42

    if-ne v14, v0, :cond_2b

    .line 2902
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    .line 2903
    const-string v42, "CTC"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 2904
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2910
    :cond_2b
    const v42, 0x7f100661

    move/from16 v0, v42

    if-ne v14, v0, :cond_2d

    .line 2913
    const-string v42, "CTC"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_2c

    if-eqz v20, :cond_7

    .line 2914
    :cond_2c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2916
    :cond_2d
    const v42, 0x7f100659

    move/from16 v0, v42

    if-ne v14, v0, :cond_2e

    .line 2918
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "android.hardware.bluetooth"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 2919
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2921
    :cond_2e
    const v42, 0x7f100690

    move/from16 v0, v42

    if-ne v14, v0, :cond_30

    .line 2922
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_2f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_7

    .line 2923
    :cond_2f
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2925
    :cond_30
    const v42, 0x7f10065f

    move/from16 v0, v42

    if-ne v14, v0, :cond_33

    .line 2927
    const-string v42, "network_management"

    invoke-static/range {v42 .. v42}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v42

    invoke-static/range {v42 .. v42}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v30

    .line 2929
    .local v30, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-nez v42, :cond_32

    const/16 v23, 0x1

    .line 2931
    .local v23, "isOthersUser":Z
    :goto_5
    :try_start_2
    invoke-interface/range {v30 .. v30}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v42

    if-eqz v42, :cond_31

    if-eqz v23, :cond_7

    .line 2932
    :cond_31
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2934
    :catch_2
    move-exception v42

    goto/16 :goto_2

    .line 2929
    .end local v23    # "isOthersUser":Z
    :cond_32
    const/16 v23, 0x0

    goto :goto_5

    .line 2937
    .end local v30    # "netManager":Landroid/os/INetworkManagementService;
    :cond_33
    const v42, 0x7f100678

    move/from16 v0, v42

    if-ne v14, v0, :cond_34

    .line 2940
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mBatteryPresent:Z

    move/from16 v42, v0

    if-nez v42, :cond_7

    .line 2941
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2943
    :cond_34
    const v42, 0x7f100663

    move/from16 v0, v42

    if-ne v14, v0, :cond_36

    .line 2945
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v42

    if-eqz v42, :cond_35

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2947
    :cond_35
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2949
    :cond_36
    const v42, 0x7f100664

    move/from16 v0, v42

    if-ne v14, v0, :cond_38

    .line 2951
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v42

    if-eqz v42, :cond_37

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2952
    :cond_37
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2954
    :cond_38
    const v42, 0x7f100665

    move/from16 v0, v42

    if-ne v14, v0, :cond_3a

    .line 2955
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v42

    if-eqz v42, :cond_39

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2956
    :cond_39
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2958
    :cond_3a
    const v42, 0x7f100666

    move/from16 v0, v42

    if-ne v14, v0, :cond_3b

    .line 2959
    const-string v42, "CTC"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 2960
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2962
    :cond_3b
    const v42, 0x7f10065e

    move/from16 v0, v42

    if-ne v14, v0, :cond_3d

    .line 2963
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_3c

    const-string v42, "BRI"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_3c

    .line 2967
    :cond_3c
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2969
    :cond_3d
    const v42, 0x7f100699

    move/from16 v0, v42

    if-ne v14, v0, :cond_40

    .line 2970
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_3e

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_3f

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_3f

    .line 2971
    :cond_3e
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2972
    :cond_3f
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2973
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2975
    :cond_40
    const v42, 0x7f10069a

    move/from16 v0, v42

    if-ne v14, v0, :cond_44

    .line 2976
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_41

    .line 2977
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2978
    :cond_41
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_42

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_43

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_43

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_43

    .line 2979
    :cond_42
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2980
    :cond_43
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 2981
    const-string v42, "com.android.settings.motion2013.MotionSettings"

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 2984
    :cond_44
    const v42, 0x7f1006dc

    move/from16 v0, v42

    if-ne v14, v0, :cond_46

    .line 2985
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_45

    .line 2986
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2987
    :cond_45
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2988
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2990
    :cond_46
    const v42, 0x7f10069c

    move/from16 v0, v42

    if-ne v14, v0, :cond_48

    .line 2991
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_47

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2992
    :cond_47
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2994
    :cond_48
    const v42, 0x7f10069d

    move/from16 v0, v42

    if-ne v14, v0, :cond_4a

    .line 2995
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_49

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_49

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 2998
    :cond_49
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3000
    :cond_4a
    const v42, 0x7f1006ce

    move/from16 v0, v42

    if-ne v14, v0, :cond_4c

    .line 3001
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v42

    if-eqz v42, :cond_4b

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3002
    :cond_4b
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3004
    :cond_4c
    const v42, 0x7f10069b

    move/from16 v0, v42

    if-ne v14, v0, :cond_4d

    .line 3010
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3011
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3013
    :cond_4d
    const v42, 0x7f100688

    move/from16 v0, v42

    if-ne v14, v0, :cond_4f

    .line 3014
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_4e

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3015
    :cond_4e
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3017
    :cond_4f
    const v42, 0x7f1006ec

    move/from16 v0, v42

    if-ne v14, v0, :cond_50

    .line 3018
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3019
    :cond_50
    const v42, 0x7f1006ab

    move/from16 v0, v42

    if-ne v14, v0, :cond_52

    .line 3020
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-eqz v42, :cond_51

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_51

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_51

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_51

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3024
    :cond_51
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3026
    :cond_52
    const v42, 0x7f1006ac

    move/from16 v0, v42

    if-ne v14, v0, :cond_54

    .line 3027
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-eqz v42, :cond_53

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_53

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_53

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3031
    :cond_53
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3033
    :cond_54
    const v42, 0x7f10068a

    move/from16 v0, v42

    if-ne v14, v0, :cond_56

    .line 3034
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-nez v42, :cond_55

    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_55

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3037
    :cond_55
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3039
    :cond_56
    const v42, 0x7f1006e8

    move/from16 v0, v42

    if-ne v14, v0, :cond_58

    .line 3041
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_57

    const-string v42, "com.sec.KidsSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3042
    :cond_57
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3044
    :cond_58
    const v42, 0x7f100693

    move/from16 v0, v42

    if-ne v14, v0, :cond_5a

    .line 3045
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_59

    .line 3050
    const-string v42, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3046
    :cond_59
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3052
    :cond_5a
    const v42, 0x7f10063c

    move/from16 v0, v42

    if-ne v14, v0, :cond_5b

    .line 3053
    move/from16 v39, v13

    .line 3061
    .local v39, "startIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3063
    .end local v39    # "startIndex":I
    :cond_5b
    const v42, 0x7f1006b2

    move/from16 v0, v42

    if-ne v14, v0, :cond_5c

    .line 3064
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3065
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3067
    :cond_5c
    const v42, 0x7f10063e

    move/from16 v0, v42

    if-ne v14, v0, :cond_5d

    .line 3069
    add-int/lit8 v12, v13, 0x1

    .line 3070
    .local v12, "headerIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/settings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v13

    .line 3072
    const-string v42, "no_modify_accounts"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3073
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3075
    .end local v12    # "headerIndex":I
    :cond_5d
    const v42, 0x7f10069f

    move/from16 v0, v42

    if-ne v14, v0, :cond_5e

    .line 3076
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3077
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3081
    :cond_5e
    const v42, 0x7f100697

    move/from16 v0, v42

    if-ne v14, v0, :cond_5f

    .line 3084
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3086
    :cond_5f
    const v42, 0x7f1006ed

    move/from16 v0, v42

    if-ne v14, v0, :cond_60

    .line 3089
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3091
    :cond_60
    const v42, 0x7f100662

    move/from16 v0, v42

    if-ne v14, v0, :cond_61

    .line 3093
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3094
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3096
    :cond_61
    const v42, 0x7f100646

    move/from16 v0, v42

    if-ne v14, v0, :cond_62

    .line 3098
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3100
    :cond_62
    const v42, 0x7f100679

    move/from16 v0, v42

    if-ne v14, v0, :cond_67

    .line 3102
    const/16 v22, 0x1

    .line 3103
    .local v22, "isMultipleUsersAllowed":Z
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v42

    const/16 v43, 0x0

    invoke-virtual/range {v42 .. v43}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v42

    if-nez v42, :cond_63

    .line 3104
    const/16 v22, 0x0

    .line 3107
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "shopdemo"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 3108
    .restart local v36    # "shop":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v42

    if-eqz v42, :cond_64

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v42

    if-nez v42, :cond_64

    if-eqz v22, :cond_64

    const/16 v42, 0x1

    move/from16 v0, v36

    move/from16 v1, v42

    if-ne v0, v1, :cond_65

    .line 3112
    :cond_64
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3113
    :cond_65
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_66

    .line 3115
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3117
    :cond_66
    const v42, 0x7f0a1c2f

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 3118
    const v42, 0x7f0a1c30

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3121
    .end local v22    # "isMultipleUsersAllowed":Z
    .end local v36    # "shop":I
    :cond_67
    const v42, 0x7f100641

    move/from16 v0, v42

    if-ne v14, v0, :cond_6a

    .line 3122
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v42

    if-nez v42, :cond_68

    const-string v42, "no_modify_accounts"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_69

    .line 3123
    :cond_68
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3126
    :cond_69
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.cloudagent"

    const/16 v44, 0x5

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 3127
    :catch_3
    move-exception v8

    .line 3128
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3131
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6a
    const v42, 0x7f1006b4

    move/from16 v0, v42

    if-ne v14, v0, :cond_6f

    .line 3132
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_6b

    const-string v42, "SPR"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_6b

    const-string v42, "BST"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_6b

    .line 3134
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3135
    :cond_6b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_6d

    .line 3136
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_6c

    const-string v42, "Settings"

    const-string v43, "Samsung FOTA devices"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :cond_6c
    const-string v42, "com.android.settings.SoftwareUpdateSettings"

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3139
    :cond_6d
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_6e

    const-string v42, "Settings"

    const-string v43, "Samsung non-FOTA devices"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    :cond_6e
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 3141
    .local v16, "intent":Landroid/content/Intent;
    const-string v42, "android.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3142
    const/high16 v42, 0x10200000

    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3143
    move-object/from16 v0, v16

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 3145
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_6f
    const v42, 0x7f1006b5

    move/from16 v0, v42

    if-ne v14, v0, :cond_71

    .line 3146
    const-string v42, "ro.csc.sales_code"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3148
    .local v35, "salesCode":Ljava/lang/String;
    const-string v42, "VZW"

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_70

    .line 3149
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3152
    :cond_70
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.fotaclient"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3153
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 3154
    :catch_4
    move-exception v8

    .line 3155
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v42, "Settings"

    const-string v43, "Verizon OMADM devices"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 3157
    .restart local v16    # "intent":Landroid/content/Intent;
    const-string v42, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    const/high16 v42, 0x10200000

    move-object/from16 v0, v16

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3159
    move-object/from16 v0, v16

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 3162
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v35    # "salesCode":Ljava/lang/String;
    :cond_71
    const v42, 0x7f1006b3

    move/from16 v0, v42

    if-ne v14, v0, :cond_72

    .line 3163
    const/16 v25, 0x1

    .line 3165
    .local v25, "isSprintDsa":Z
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sprint.dsa"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3171
    :goto_6
    if-nez v25, :cond_7

    .line 3172
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3166
    :catch_5
    move-exception v8

    .line 3167
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x0

    goto :goto_6

    .line 3174
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v25    # "isSprintDsa":Z
    :cond_72
    const v42, 0x7f1006e9

    move/from16 v0, v42

    if-ne v14, v0, :cond_73

    .line 3176
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3178
    :cond_73
    const v42, 0x7f10068b

    move/from16 v0, v42

    if-ne v14, v0, :cond_74

    .line 3180
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3182
    :cond_74
    const v42, 0x7f100669

    move/from16 v0, v42

    if-ne v14, v0, :cond_7b

    .line 3185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "android.hardware.nfc"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_75

    .line 3187
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3189
    :cond_75
    const/16 v32, 0x0

    .line 3191
    .local v32, "nfcsummary":Ljava/lang/CharSequence;
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.android.settings.nfcsummary"

    invoke-virtual/range {v42 .. v43}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v32

    .line 3192
    if-eqz v32, :cond_76

    .line 3193
    move-object/from16 v0, v32

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3194
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_6

    .line 3199
    :cond_76
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3200
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v31

    .line 3201
    .local v31, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v42

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_77

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v42

    const/16 v43, 0x2

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_78

    .line 3202
    :cond_77
    const v42, 0x7f0a0367

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3196
    .end local v31    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_6
    move-exception v8

    .line 3197
    .local v8, "e":Ljava/lang/NullPointerException;
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_76

    const-string v42, "CSCAppRes"

    const-string v43, "No data for CSCAppResourceUri"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3203
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v31    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_78
    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_79

    .line 3204
    const v42, 0x7f0a0365

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3205
    :cond_79
    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_7a

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v42

    const/16 v43, 0x4

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 3206
    :cond_7a
    const v42, 0x7f0a0366

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3211
    .end local v31    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v32    # "nfcsummary":Ljava/lang/CharSequence;
    :cond_7b
    const v42, 0x7f100671

    move/from16 v0, v42

    if-ne v14, v0, :cond_7c

    .line 3212
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_NFC_EnableFelica"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3213
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3216
    :cond_7c
    const v42, 0x7f10066a

    move/from16 v0, v42

    if-ne v14, v0, :cond_7f

    .line 3218
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v42

    if-nez v42, :cond_7d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v42

    if-nez v42, :cond_7e

    .line 3219
    :cond_7d
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3221
    :cond_7e
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3222
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3225
    :cond_7f
    const v42, 0x7f10066d

    move/from16 v0, v42

    if-ne v14, v0, :cond_80

    .line 3227
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3229
    :cond_80
    const v42, 0x7f10066e

    move/from16 v0, v42

    if-ne v14, v0, :cond_81

    .line 3231
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3232
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3234
    :cond_81
    const v42, 0x7f10066f

    move/from16 v0, v42

    if-ne v14, v0, :cond_83

    .line 3235
    const/16 v26, 0x1

    .line 3237
    .local v26, "isSupportMirrorLink":Z
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.samsung.android.app.mirrorlink"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3241
    if-nez v26, :cond_7

    .line 3243
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3238
    :catch_7
    move-exception v8

    .line 3239
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v26, 0x0

    .line 3241
    if-nez v26, :cond_7

    .line 3243
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3241
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v42

    if-eqz v26, :cond_82

    .line 3243
    :goto_8
    throw v42

    :cond_82
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 3246
    .end local v26    # "isSupportMirrorLink":Z
    :cond_83
    const v42, 0x7f100670

    move/from16 v0, v42

    if-ne v14, v0, :cond_84

    .line 3248
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.app.kieswifi"

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 3249
    :catch_8
    move-exception v8

    .line 3250
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3253
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_84
    const v42, 0x7f100645

    move/from16 v0, v42

    if-ne v14, v0, :cond_87

    .line 3254
    const-string v42, "DCM"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_85

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isDocomoSettingsDisabled()Z

    move-result v42

    if-eqz v42, :cond_86

    .line 3255
    :cond_85
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3259
    :cond_86
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.nttdocomo.android.docomoset"

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_2

    .line 3260
    :catch_9
    move-exception v8

    .line 3261
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3264
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_87
    const v42, 0x7f10066c

    move/from16 v0, v42

    if-ne v14, v0, :cond_88

    .line 3265
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v42

    if-nez v42, :cond_7

    .line 3266
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3268
    :cond_88
    const v42, 0x7f100667

    move/from16 v0, v42

    if-ne v14, v0, :cond_8b

    .line 3270
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-nez v42, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-nez v42, :cond_89

    const-string v42, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3271
    :cond_89
    const-string v42, "ro.product.name"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3272
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_8a

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    const-string v43, "wilcoxlte"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_8a

    const/16 v42, 0x1

    :goto_9
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 3273
    .local v19, "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_7

    .line 3274
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3272
    .end local v19    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_8a
    const/16 v42, 0x0

    goto :goto_9

    .line 3277
    .end local v7    # "device":Ljava/lang/String;
    :cond_8b
    const v42, 0x7f10067a

    move/from16 v0, v42

    if-ne v14, v0, :cond_8c

    .line 3290
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3292
    :cond_8c
    const v42, 0x7f100682

    move/from16 v0, v42

    if-ne v14, v0, :cond_8e

    .line 3294
    if-eqz v37, :cond_8d

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3295
    :cond_8d
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3297
    :cond_8e
    const v42, 0x7f10063f

    move/from16 v0, v42

    if-ne v14, v0, :cond_8f

    .line 3298
    const-string v42, "no_modify_accounts"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    if-nez v20, :cond_7

    .line 3299
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3301
    :cond_8f
    const v42, 0x7f1006ef

    move/from16 v0, v42

    if-ne v14, v0, :cond_91

    .line 3303
    if-eqz v37, :cond_90

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v42

    if-nez v42, :cond_7

    .line 3304
    :cond_90
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3306
    :cond_91
    const v42, 0x7f10068e

    move/from16 v0, v42

    if-ne v14, v0, :cond_95

    .line 3307
    const-string v42, "ro.multisim.simslotcount"

    const/16 v43, 0x1

    invoke-static/range {v42 .. v43}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v38

    .line 3308
    .local v38, "simSlotCount":I
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v42

    if-eqz v42, :cond_92

    .line 3309
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3310
    :cond_92
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-nez v42, :cond_93

    .line 3311
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3312
    :cond_93
    const/16 v42, 0x2

    move/from16 v0, v38

    move/from16 v1, v42

    if-ge v0, v1, :cond_94

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-eqz v42, :cond_94

    .line 3314
    if-eqz p1, :cond_7

    .line 3315
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3316
    :cond_94
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-eqz v42, :cond_7

    const-string v42, "CDMA"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3318
    if-eqz p1, :cond_7

    .line 3319
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3322
    .end local v38    # "simSlotCount":I
    :cond_95
    const v42, 0x7f10068f

    move/from16 v0, v42

    if-ne v14, v0, :cond_9a

    .line 3323
    const-string v42, "Settings"

    const-string v43, "simcard_management_chn:only China model except for CTC use this item"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v42

    if-nez v42, :cond_96

    .line 3325
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3326
    :cond_96
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v43, "com.sec.android.app.simcardmgr"

    invoke-static/range {v42 .. v43}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_97

    .line 3327
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3328
    :cond_97
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-nez v42, :cond_98

    .line 3329
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3330
    :cond_98
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-eqz v42, :cond_99

    const-string v42, "CDMA"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_99

    .line 3331
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3332
    :cond_99
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_7

    .line 3333
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3335
    :cond_9a
    const v42, 0x7f1006eb

    move/from16 v0, v42

    if-ne v14, v0, :cond_9c

    .line 3336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_9b

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v42

    if-nez v42, :cond_7

    .line 3337
    :cond_9b
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3341
    :cond_9c
    const v42, 0x7f10065b

    move/from16 v0, v42

    if-ne v14, v0, :cond_9f

    .line 3342
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-nez v42, :cond_9d

    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_9e

    :cond_9d
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3344
    :cond_9e
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3348
    :cond_9f
    const v42, 0x7f10065c

    move/from16 v0, v42

    if-ne v14, v0, :cond_a0

    .line 3349
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3351
    :cond_a0
    const v42, 0x7f1006ae

    move/from16 v0, v42

    if-ne v14, v0, :cond_a2

    .line 3352
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_a1

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3353
    :cond_a1
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3356
    :cond_a2
    const v42, 0x7f1006b7

    move/from16 v0, v42

    if-ne v14, v0, :cond_a3

    .line 3358
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3361
    :cond_a3
    const v42, 0x7f10065d

    move/from16 v0, v42

    if-ne v14, v0, :cond_a4

    .line 3363
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3366
    :cond_a4
    const v42, 0x7f10065a

    move/from16 v0, v42

    if-ne v14, v0, :cond_a9

    .line 3367
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-nez v42, :cond_a5

    .line 3368
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3370
    :cond_a5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_a8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-nez v42, :cond_a8

    const/16 v24, 0x1

    .line 3372
    .local v24, "isSecondaryUser":Z
    :goto_a
    const-string v42, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 3374
    .local v6, "cm":Landroid/net/ConnectivityManager;
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_a6

    .line 3377
    :cond_a6
    if-nez v24, :cond_a7

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v42

    if-eqz v42, :cond_a7

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_a7

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    const-string v42, "ATT"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3378
    :cond_a7
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3370
    .end local v6    # "cm":Landroid/net/ConnectivityManager;
    .end local v24    # "isSecondaryUser":Z
    :cond_a8
    const/16 v24, 0x0

    goto :goto_a

    .line 3383
    :cond_a9
    const v42, 0x7f100646

    move/from16 v0, v42

    if-ne v14, v0, :cond_aa

    .line 3386
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3388
    :cond_aa
    const v42, 0x7f1006e3

    move/from16 v0, v42

    if-ne v14, v0, :cond_ab

    .line 3390
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3391
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3393
    :cond_ab
    const v42, 0x7f100685

    move/from16 v0, v42

    if-ne v14, v0, :cond_ac

    .line 3394
    const-string v42, "DCM"

    const-string v43, "ro.csc.sales_code"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3395
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3397
    :cond_ac
    const v42, 0x7f100678

    move/from16 v0, v42

    if-eq v14, v0, :cond_7

    .line 3399
    const v42, 0x7f1006e0

    move/from16 v0, v42

    if-ne v14, v0, :cond_af

    .line 3400
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3401
    .local v17, "isChinaNal":Ljava/lang/String;
    if-eqz v17, :cond_ad

    const-string v42, "ChinaNalSecurity"

    move-object/from16 v0, v17

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_ae

    .line 3402
    :cond_ad
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3405
    :cond_ae
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.app.capabilitymanager"

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_2

    .line 3406
    :catch_a
    move-exception v8

    .line 3407
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3410
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "isChinaNal":Ljava/lang/String;
    :cond_af
    const v42, 0x7f1006e6

    move/from16 v0, v42

    if-ne v14, v0, :cond_b0

    .line 3411
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3412
    :cond_b0
    const v42, 0x7f10066b

    move/from16 v0, v42

    if-ne v14, v0, :cond_b2

    .line 3413
    invoke-virtual/range {v40 .. v40}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3414
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_b1

    const-string v42, "Settings"

    const-string v43, "Restrict mode - remove Nearby devices"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    :cond_b1
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3417
    :cond_b2
    const v42, 0x7f100667

    move/from16 v0, v42

    if-ne v14, v0, :cond_b5

    .line 3418
    const-string v42, "ro.product.name"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3419
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_b3

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    const-string v43, "wilcoxlte"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_b3

    const/16 v42, 0x1

    :goto_b
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 3421
    .restart local v19    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_b4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-nez v42, :cond_b4

    const/16 v23, 0x1

    .line 3422
    .restart local v23    # "isOthersUser":Z
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-eqz v42, :cond_7

    if-eqz v23, :cond_7

    .line 3423
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v42

    if-nez v42, :cond_7

    .line 3424
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3419
    .end local v19    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    .end local v23    # "isOthersUser":Z
    :cond_b3
    const/16 v42, 0x0

    goto :goto_b

    .line 3421
    .restart local v19    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_b4
    const/16 v23, 0x0

    goto :goto_c

    .line 3427
    .end local v7    # "device":Ljava/lang/String;
    .end local v19    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_b5
    const v42, 0x7f1006e1

    move/from16 v0, v42

    if-ne v14, v0, :cond_b6

    .line 3428
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3429
    :cond_b6
    const v42, 0x7f100692

    move/from16 v0, v42

    if-ne v14, v0, :cond_b8

    .line 3430
    const-string v42, "ro.product.name"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3431
    .restart local v7    # "device":Ljava/lang/String;
    if-eqz v7, :cond_b7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v42

    const-string v43, "jactivelte"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_b7

    const/16 v18, 0x1

    .line 3432
    .local v18, "isDeviceJactive":Z
    :goto_d
    if-nez v18, :cond_7

    .line 3433
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3431
    .end local v18    # "isDeviceJactive":Z
    :cond_b7
    const/16 v18, 0x0

    goto :goto_d

    .line 3435
    .end local v7    # "device":Ljava/lang/String;
    :cond_b8
    const v42, 0x7f1006ee

    move/from16 v0, v42

    if-ne v14, v0, :cond_b9

    .line 3436
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3437
    :cond_b9
    const v42, 0x7f10068c

    move/from16 v0, v42

    if-ne v14, v0, :cond_ba

    .line 3439
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3441
    :cond_ba
    const v42, 0x7f1006a8

    move/from16 v0, v42

    if-ne v14, v0, :cond_bb

    .line 3442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "shopdemo"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 3444
    .restart local v36    # "shop":I
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3446
    .end local v36    # "shop":I
    :cond_bb
    const v42, 0x7f10068d

    move/from16 v0, v42

    if-ne v14, v0, :cond_bf

    .line 3447
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_bc

    .line 3448
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3450
    :cond_bc
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_bd

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_be

    .line 3451
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x7f0a0d9d

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3452
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3455
    :cond_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x7f0a0d9c

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 3456
    const/16 v42, 0x0

    move/from16 v0, v42

    iput v0, v11, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 3458
    :cond_bf
    const v42, 0x7f10064a

    move/from16 v0, v42

    if-ne v14, v0, :cond_c2

    .line 3459
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v42

    if-eqz v42, :cond_c1

    const/16 v23, 0x1

    .line 3460
    .restart local v23    # "isOthersUser":Z
    :goto_e
    const-string v42, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v42 .. v42}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_c0

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_c0

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_c0

    if-eqz v23, :cond_7

    .line 3462
    :cond_c0
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3459
    .end local v23    # "isOthersUser":Z
    :cond_c1
    const/16 v23, 0x0

    goto :goto_e

    .line 3464
    :cond_c2
    const v42, 0x7f100691

    move/from16 v0, v42

    if-ne v14, v0, :cond_c3

    .line 3469
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.sec.android.app.safetyassurance"

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_2

    .line 3470
    :catch_b
    move-exception v8

    .line 3471
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3474
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c3
    const v42, 0x7f1006b1

    move/from16 v0, v42

    if-ne v14, v0, :cond_c4

    .line 3476
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3478
    :cond_c4
    const v42, 0x7f1006e7

    move/from16 v0, v42

    if-ne v14, v0, :cond_c5

    .line 3479
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3480
    :cond_c5
    const v42, 0x7f10069e

    move/from16 v0, v42

    if-ne v14, v0, :cond_c7

    .line 3481
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings/Settings;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v42

    if-eqz v42, :cond_c6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->isVoiceControlEnabled()Z

    move-result v42

    if-eqz v42, :cond_c6

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v42

    if-nez v42, :cond_c6

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3482
    :cond_c6
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3484
    :cond_c7
    const v42, 0x7f1006ea

    move/from16 v0, v42

    if-ne v14, v0, :cond_c8

    .line 3485
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3486
    :cond_c8
    const v42, 0x7f100643

    move/from16 v0, v42

    if-ne v14, v0, :cond_c9

    .line 3487
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3488
    :cond_c9
    const v42, 0x7f10066b

    move/from16 v0, v42

    if-ne v14, v0, :cond_ca

    .line 3489
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3490
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3492
    :cond_ca
    const v42, 0x7f100698

    move/from16 v0, v42

    if-ne v14, v0, :cond_cc

    .line 3493
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "shopdemo"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    .line 3494
    .restart local v36    # "shop":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_cb

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_cb

    const/16 v42, 0x1

    move/from16 v0, v36

    move/from16 v1, v42

    if-ne v0, v1, :cond_7

    .line 3495
    :cond_cb
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3497
    .end local v36    # "shop":I
    :cond_cc
    const v42, 0x7f100695

    move/from16 v0, v42

    if-ne v14, v0, :cond_ce

    .line 3499
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    const-string v43, "com.skyfire.browser.toolbar.att"

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v33

    .line 3501
    .local v33, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_cd

    if-eqz v33, :cond_cd

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v42, v0

    if-nez v42, :cond_7

    .line 3502
    :cond_cd
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_2

    .line 3504
    .end local v33    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_c
    move-exception v8

    .line 3505
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3506
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_7

    const-string v42, "Settings"

    const-string v43, "Browser Bar is not found"

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3509
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_ce
    const v42, 0x7f1006af

    move/from16 v0, v42

    if-ne v14, v0, :cond_cf

    .line 3513
    const-string v42, "no_modify_accounts"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3514
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3516
    :cond_cf
    const v42, 0x7f100640

    move/from16 v0, v42

    if-ne v14, v0, :cond_d0

    .line 3517
    const-string v42, "no_modify_accounts"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3518
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3520
    :cond_d0
    const v42, 0x7f100687

    move/from16 v0, v42

    if-ne v14, v0, :cond_d2

    .line 3521
    const-string v42, "CTC"

    const-string v43, "ro.csc.sales_code"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mDualFoldertype:Z

    move/from16 v42, v0

    if-nez v42, :cond_7

    .line 3522
    :cond_d1
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3524
    :cond_d2
    const v42, 0x7f100660

    move/from16 v0, v42

    if-ne v14, v0, :cond_d3

    .line 3525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v42

    if-eqz v42, :cond_7

    .line 3526
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v42

    if-nez v42, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v42

    if-nez v42, :cond_7

    .line 3527
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3529
    :cond_d3
    const v42, 0x7f10065b

    move/from16 v0, v42

    if-ne v14, v0, :cond_d4

    .line 3530
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3531
    const/16 v42, 0x0

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3532
    :cond_d4
    const v42, 0x7f1006b7

    move/from16 v0, v42

    if-ne v14, v0, :cond_d5

    .line 3533
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3534
    const/16 v42, 0x0

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3535
    :cond_d5
    const v42, 0x7f1006a9

    move/from16 v0, v42

    if-ne v14, v0, :cond_d6

    .line 3539
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3541
    :cond_d6
    const v42, 0x7f1006aa

    move/from16 v0, v42

    if-ne v14, v0, :cond_d7

    .line 3543
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3545
    :cond_d7
    const v42, 0x7f10067d

    move/from16 v0, v42

    if-ne v14, v0, :cond_d8

    .line 3546
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3547
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3548
    :cond_d8
    const v42, 0x7f1006a4

    move/from16 v0, v42

    if-ne v14, v0, :cond_d9

    .line 3551
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3552
    :cond_d9
    const v42, 0x7f1006f2

    move/from16 v0, v42

    if-ne v14, v0, :cond_da

    .line 3553
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3554
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3555
    :cond_da
    const v42, 0x7f10064b

    move/from16 v0, v42

    if-ne v14, v0, :cond_dd

    .line 3556
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_db

    .line 3557
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    const-string v43, ":android:show_fragment"

    const-string v44, "com.android.contacts.preference.DisplayOptionsPreferenceFragment"

    invoke-virtual/range {v42 .. v44}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3559
    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    const-string v43, ":android:no_headers"

    const/16 v44, 0x1

    invoke-virtual/range {v42 .. v44}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3561
    :cond_db
    const-string v42, "DCM"

    const-string v43, "ro.csc.sales_code"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_dc

    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3562
    :cond_dc
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3564
    :cond_dd
    const v42, 0x7f10064c

    move/from16 v0, v42

    if-ne v14, v0, :cond_de

    .line 3565
    const-string v42, "DCM"

    const-string v43, "ro.csc.sales_code"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3566
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3568
    :cond_de
    const v42, 0x7f10064d

    move/from16 v0, v42

    if-ne v14, v0, :cond_df

    .line 3569
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3570
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3572
    :cond_df
    const v42, 0x7f10064e

    move/from16 v0, v42

    if-ne v14, v0, :cond_e0

    .line 3573
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3574
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3576
    :cond_e0
    const v42, 0x7f10064f

    move/from16 v0, v42

    if-ne v14, v0, :cond_e1

    .line 3577
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3578
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3580
    :cond_e1
    const v42, 0x7f100650

    move/from16 v0, v42

    if-ne v14, v0, :cond_e3

    .line 3581
    const-string v42, "KDI"

    const-string v43, "ro.csc.sales_code"

    invoke-static/range {v43 .. v43}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e2

    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e2

    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v43, "com.android.mms"

    invoke-static/range {v42 .. v43}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3582
    :cond_e2
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3584
    :cond_e3
    const v42, 0x7f100651

    move/from16 v0, v42

    if-ne v14, v0, :cond_e7

    .line 3585
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v42

    if-nez v42, :cond_e4

    const-string v42, "XAR"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e4

    const-string v42, "XAC"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_e5

    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "easy_mode_switch"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_e6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "easy_mode_splanner"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_e6

    .line 3589
    :cond_e5
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3590
    :cond_e6
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3591
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3593
    :cond_e7
    const v42, 0x7f100652

    move/from16 v0, v42

    if-ne v14, v0, :cond_e9

    .line 3594
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v42

    if-nez v42, :cond_e8

    const-string v42, "XAR"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e8

    const-string v42, "XAC"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_e8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "easy_mode_switch"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    const-string v43, "easy_mode_splanner"

    const/16 v44, 0x0

    invoke-static/range {v42 .. v44}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v42

    if-nez v42, :cond_7

    .line 3596
    :cond_e8
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3598
    :cond_e9
    const v42, 0x7f100649

    move/from16 v0, v42

    if-ne v14, v0, :cond_eb

    .line 3599
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v43, "com.samsung.android.coreapps"

    invoke-static/range {v42 .. v43}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getBaseContext()Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x4

    invoke-static/range {v42 .. v43}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v42

    if-gez v42, :cond_7

    .line 3600
    :cond_ea
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3602
    :cond_eb
    const v42, 0x7f100653

    move/from16 v0, v42

    if-ne v14, v0, :cond_f1

    .line 3603
    const-string v10, "com.vlingo.midas.gui.ConversationActivity"

    .line 3604
    .local v10, "fragment":Ljava/lang/String;
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v42

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_ec

    .line 3605
    invoke-static {}, Lcom/android/settings/Utils;->hasKLook()Z

    move-result v42

    if-eqz v42, :cond_f0

    .line 3606
    const-string v10, "com.vlingo.midas.settings.twopane.SettingsScreenTwoPane"

    .line 3612
    :cond_ec
    :goto_f
    sget-boolean v42, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v42, :cond_ed

    const-string v42, "Settings"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "fragment of svoice : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    :cond_ed
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    if-eqz v42, :cond_ee

    .line 3614
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    const-string v43, "com.vlingo.midas"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3616
    :cond_ee
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v42

    const-string v43, "SEC_FLOATING_FEATURE_SVOICE_CONFIG_FOR_GEAR"

    invoke-virtual/range {v42 .. v43}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_ef

    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3618
    :cond_ef
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3609
    :cond_f0
    const-string v10, "com.vlingo.midas.settings.SettingsScreen"

    goto :goto_f

    .line 3620
    .end local v10    # "fragment":Ljava/lang/String;
    :cond_f1
    const v42, 0x7f1006d1

    move/from16 v0, v42

    if-ne v14, v0, :cond_f2

    .line 3624
    const-string v42, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v42

    iput-object v0, v11, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 3626
    :cond_f2
    const v42, 0x7f100654

    move/from16 v0, v42

    if-ne v14, v0, :cond_f3

    .line 3627
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3628
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3630
    :cond_f3
    const v42, 0x7f100647

    move/from16 v0, v42

    if-ne v14, v0, :cond_f4

    .line 3631
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    goto/16 :goto_2

    .line 3634
    :cond_f4
    const v42, 0x7f100648

    move/from16 v0, v42

    if-ne v14, v0, :cond_f5

    .line 3635
    const-string v42, "VZW"

    sget-object v43, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_7

    goto/16 :goto_2

    .line 3638
    :cond_f5
    const v42, 0x7f1006b6

    move/from16 v0, v42

    if-ne v14, v0, :cond_f6

    .line 3639
    sget-object v42, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v42 .. v42}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v42

    if-eqz v42, :cond_7

    .line 3640
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3644
    :cond_f6
    const v42, 0x7f1006c7

    move/from16 v0, v42

    if-ne v14, v0, :cond_7

    .line 3645
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v42

    const-string v43, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v42 .. v43}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v42

    if-nez v42, :cond_7

    .line 3646
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3655
    :cond_f7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_f8

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    if-ne v0, v11, :cond_f8

    if-eqz v20, :cond_f8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-nez v42, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-static {v0, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v42

    if-nez v42, :cond_f8

    .line 3658
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3659
    :cond_f8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_f9

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    if-ne v0, v11, :cond_f9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v42, v0

    if-eqz v42, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-static {v0, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v42

    if-nez v42, :cond_f9

    .line 3661
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3662
    :cond_f9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v42

    move/from16 v0, v42

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 v0, v42

    if-ne v0, v11, :cond_8

    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    if-eqz v42, :cond_8

    iget-object v0, v11, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v42

    if-nez v42, :cond_8

    .line 3664
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 3710
    .end local v11    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v14    # "id":I
    .end local v20    # "isKnoxUser":Z
    .end local v34    # "removed":Z
    :cond_fa
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5411
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5413
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 5416
    .local v0, "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 5418
    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 5422
    .end local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :goto_0
    return v1

    .line 5418
    .restart local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 5422
    .end local v0    # "guide":Lcom/android/settings/guide/GuideFragmentCallback;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 2393
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2394
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 2397
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2398
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2399
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2400
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2401
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2402
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 2406
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2407
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2410
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 2404
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 2410
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 3928
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2418
    iget-object v1, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 2430
    :cond_0
    :goto_0
    return-object v0

    .line 2420
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2421
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 2423
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2427
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 3923
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2369
    if-eqz p1, :cond_0

    .line 2370
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2371
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2372
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2373
    invoke-virtual {p0}, Lcom/android/settings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2374
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2378
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public highlightHeaderWithoutScroll(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2382
    if-eqz p1, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2384
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2388
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 2218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2219
    sget-object v1, Lcom/android/settings/Settings;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2221
    :goto_1
    return v1

    .line 2218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2221
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1500
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 5398
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 5400
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    .line 5401
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x1610

    const/4 v3, 0x0

    .line 3947
    if-nez p1, :cond_2

    .line 3948
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3949
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 3950
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 3951
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 3976
    :cond_0
    :goto_0
    return-void

    .line 3953
    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 3958
    :cond_2
    const/16 v1, 0x160f

    if-ne p1, v1, :cond_4

    .line 3959
    if-ne p2, v4, :cond_0

    .line 3960
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Settings"

    const-string v2, "Search direct back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->setResult(I)V

    .line 3962
    sput-boolean v3, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 3963
    iput-boolean v3, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 3964
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0

    .line 3969
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 3970
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 3971
    const-string v1, "Settings"

    const-string v2, "SBeam help back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 5444
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 5446
    instance-of v0, p1, Lcom/android/settings/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 5447
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 5449
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 3981
    sget-boolean v0, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 3982
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setResult(I)V

    .line 3984
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 3985
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x0

    const v8, 0x7f070036

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2546
    sget v7, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v7, :cond_1

    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v7, :cond_10

    .line 2548
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v6

    .line 2550
    .local v6, "tabIndex":I
    if-gez v6, :cond_2

    .line 2551
    invoke-direct {p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v6

    .line 2554
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 2586
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 2614
    .end local v6    # "tabIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2615
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 2618
    :cond_3
    sget v7, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_5

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2619
    iget-object v7, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2620
    .local v4, "index":Ljava/lang/Integer;
    if-nez v4, :cond_12

    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_12

    iget v7, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-eq v7, v8, :cond_12

    .line 2622
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v7}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2623
    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2628
    :goto_1
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-lez v7, :cond_5

    .line 2629
    iput v12, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 2637
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_5
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v7, :cond_9

    .line 2638
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 2639
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iget-wide v8, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v10, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1d

    .line 2640
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 2641
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2642
    :cond_6
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f10064a

    cmp-long v7, v8, v10

    if-nez v7, :cond_15

    .line 2643
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2644
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2646
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_13

    .line 2647
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2653
    :cond_7
    :goto_4
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2654
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2655
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "args_from_search"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2656
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2657
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2658
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2659
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2660
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2668
    :goto_5
    iput-boolean v12, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2713
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_6
    iput-boolean v12, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2716
    .end local v3    # "i":I
    :cond_9
    return-void

    .line 2556
    .restart local v6    # "tabIndex":I
    :pswitch_0
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2559
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2560
    const v7, 0x7f07003d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2561
    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2562
    const v7, 0x7f070046

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2564
    :cond_b
    const v7, 0x7f07003c

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2568
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2569
    const v7, 0x7f07005e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2570
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2571
    const v7, 0x7f070063

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2573
    :cond_d
    const v7, 0x7f07000e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2577
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2578
    const v7, 0x7f070020

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2579
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2580
    const v7, 0x7f07005d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2582
    :cond_f
    const v7, 0x7f070073

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2606
    .end local v6    # "tabIndex":I
    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2607
    const v7, 0x7f07005f

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2609
    :cond_11
    const v7, 0x7f0700c8

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2624
    .restart local v4    # "index":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 2626
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 2630
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_12
    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 2631
    iget v7, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-lez v7, :cond_5

    .line 2632
    iput v12, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    goto/16 :goto_2

    .line 2649
    .end local v4    # "index":Ljava/lang/Integer;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "i":I
    :cond_13
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 2650
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 2662
    :cond_14
    const-string v7, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 2663
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2664
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2665
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2666
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 2669
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_15
    sget-wide v8, Lcom/android/settings/Settings;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f100691

    cmp-long v7, v8, v10

    if-nez v7, :cond_18

    .line 2670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2671
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2673
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_17

    .line 2674
    iget-object v7, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2680
    :cond_16
    :goto_7
    const-string v7, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 2681
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.app.safetyassurance"

    const-string v8, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2682
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2683
    const-string v7, "extra_depth_counter_key"

    sget v8, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2684
    sget-object v7, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2676
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_17
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_16

    .line 2677
    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_7

    .line 2686
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_18
    sget v7, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_19

    iget-object v7, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v7, :cond_19

    .line 2687
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2688
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2689
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_6

    .line 2691
    :cond_19
    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065c

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1a

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006dd

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1a

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065d

    cmp-long v7, v8, v10

    if-nez v7, :cond_1b

    .line 2697
    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2698
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2699
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_6

    .line 2701
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2702
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_6

    .line 2707
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 2708
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/Settings;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_6

    .line 2638
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 2554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 9
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 2460
    .local v1, "intent":Landroid/content/Intent;
    const-class v5, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-class v5, Lcom/android/settings/DreamSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-class v5, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2482
    :cond_1
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2488
    :cond_2
    const-class v5, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2489
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2490
    .local v4, "temp":Landroid/content/Intent;
    if-eqz v4, :cond_3

    .line 2491
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2497
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_3
    const-class v5, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2498
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 2499
    .restart local v4    # "temp":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 2500
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2505
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2507
    const-class v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2509
    :cond_5
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2513
    :cond_6
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2515
    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2516
    .local v3, "isWifiSettingsFragment":Z
    const-class v5, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2518
    .local v2, "isBtSettingsFragment":Z
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    .line 2519
    :cond_7
    const-string v5, "settings:guide_is_on"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2522
    :cond_8
    const/4 v0, 0x0

    .line 2524
    .local v0, "guideExtra":Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 2525
    const-string v0, "wifi"

    .line 2533
    :cond_9
    :goto_0
    const-string v5, "settings:guide_mode"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2537
    .end local v0    # "guideExtra":Ljava/lang/String;
    .end local v2    # "isBtSettingsFragment":Z
    .end local v3    # "isWifiSettingsFragment":Z
    :cond_a
    const-class v5, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2538
    return-object v1

    .line 2527
    .restart local v0    # "guideExtra":Ljava/lang/String;
    .restart local v2    # "isBtSettingsFragment":Z
    .restart local v3    # "isWifiSettingsFragment":Z
    :cond_b
    if-nez v2, :cond_c

    const-class v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2529
    :cond_c
    const-string v0, "bt"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f10002c

    const/4 v8, 0x1

    const v7, 0x7f10002d

    const/4 v6, 0x0

    .line 1739
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1741
    sget v4, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    if-ne v4, v8, :cond_0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v4, :cond_5

    .line 1743
    :cond_1
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1744
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, -0x3

    .line 1746
    .local v2, "mTextSize":I
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1747
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1748
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1749
    iget-object v4, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1750
    iget-object v4, p0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1768
    :goto_0
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    .line 1769
    invoke-direct {p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 1772
    :cond_2
    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "VZW"

    sget-object v5, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    if-eqz v4, :cond_5

    .line 1773
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1774
    .local v0, "bar":Landroid/app/ActionBar;
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_8

    .line 1775
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1782
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "mTextSize":I
    :cond_5
    :goto_1
    return-void

    .line 1751
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "mTextSize":I
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1752
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1753
    iget-object v4, p0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1754
    iget-object v4, p0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1755
    iget-object v4, p0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 1757
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f03f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1758
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1759
    iget-object v4, p0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1760
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1761
    iget-object v4, p0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1762
    iget-object v4, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1763
    iget-object v4, p0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 1764
    iget-object v4, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1765
    iget-object v4, p0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1777
    .end local v3    # "padding":I
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_8
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1069
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_0

    const-string v27, "VerificationLog"

    const-string v28, "onCreate"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    sput-object p0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    .line 1071
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mDualFoldertype:Z

    .line 1073
    new-instance v27, Lcom/android/settings/Settings$DrivingModeContentObserver;

    new-instance v28, Landroid/os/Handler;

    invoke-direct/range {v28 .. v28}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$DrivingModeContentObserver;-><init>(Lcom/android/settings/Settings;Landroid/os/Handler;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 1074
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "driving_mode_on"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    move-object/from16 v30, v0

    invoke-virtual/range {v27 .. v30}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1075
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->isKioskContainer:Z

    .line 1076
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskContainer:Z

    move/from16 v27, v0

    if-eqz v27, :cond_22

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->isKioskPersonal:Z

    .line 1077
    const-string v27, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->populateKnoxCustomSettingsMap()V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "settings:ui_options"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "settings:ui_options"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setUiOptions(I)V

    .line 1088
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v27

    if-nez v27, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v28, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 1092
    :cond_2
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_3

    const-string v27, "VerificationLog"

    const-string v28, "setup spilt"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setUiOptions(I)V

    .line 1097
    :cond_4
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1099
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    .line 1100
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    const-string v27, "p4noteltevzw"

    const-string v28, "ro.product.name"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 1101
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setMultiPane(Z)V

    .line 1104
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "device_provisioned"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    .line 1107
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v26

    .line 1109
    .local v26, "window":Landroid/view/Window;
    if-eqz v26, :cond_8

    .line 1110
    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 1111
    .local v15, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move/from16 v0, v27

    or-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1113
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1117
    .end local v15    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "window":Landroid/view/Window;
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    .line 1118
    const-string v27, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 1119
    .local v19, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActivityToken()Landroid/os/IBinder;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v20

    .line 1120
    .local v20, "mUserHandle":Landroid/os/UserHandle;
    new-instance v27, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 1125
    const-string v27, "development"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1128
    const-string v27, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$DisplaySettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$InputAndControlSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    const-string v27, "com.android.settings.Settings$GeneralSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_23

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "settings_listui"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_23

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    .line 1133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "settings_listui"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_24

    const/16 v27, 0x1

    :goto_2
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    .line 1136
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-nez v27, :cond_b

    .line 1137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    .line 1138
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 1139
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 1144
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 1145
    new-instance v27, Lcom/android/settings/Settings$ToddlerModeObserver;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$ToddlerModeObserver;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    .line 1158
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 1159
    const v27, 0x7f0b0082

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTheme(I)V

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->preventTabsEmbeddedOnActionBar()V

    .line 1163
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1164
    .local v8, "className":Ljava/lang/String;
    const-class v27, Lcom/android/settings/SubSettings;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1165
    .local v14, "isSubSettings":Z
    if-eqz v14, :cond_e

    .line 1166
    const v27, 0x7f0b00b2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTheme(I)V

    .line 1169
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 1170
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1171
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1175
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 1202
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v27

    if-eqz v27, :cond_11

    .line 1203
    :cond_f
    const-string v27, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    sput-boolean v27, Lcom/android/settings/Settings;->misFromSettingsMainActivity:Z

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 1205
    .local v13, "intent":Landroid/content/Intent;
    const-string v27, "extra_from_search"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    sput-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    .line 1206
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v27, :cond_11

    .line 1207
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1208
    const-string v27, "extra_header_id"

    const-wide/16 v28, -0x1

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    sput-wide v28, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 1209
    const-string v27, "extra_setting_value"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mSearchSettingValue:I

    .line 1210
    const-string v27, "extra_fragment_bundle_key"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 1211
    const-string v27, "extra_second_fragment_bundle_key"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1213
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_10

    const-string v27, "SettingsSearch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "extra_parent_preference_key"

    const-string v30, "None"

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_10
    const-string v27, "extra_depth_counter_key"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    sput v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 1216
    sget v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    add-int/lit8 v27, v27, 0x1

    sput v27, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 1217
    sget v27, Lcom/android/settings/Settings;->mSearchSettingValue:I

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_25

    const/16 v27, 0x1

    :goto_3
    sput-boolean v27, Lcom/android/settings/Settings;->mDirectSettingEnabler:Z

    .line 1223
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 1228
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 1230
    .local v7, "bar":Landroid/app/ActionBar;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1231
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_28

    .line 1233
    const-string v27, "VZW"

    sget-object v28, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    move/from16 v27, v0

    if-eqz v27, :cond_27

    .line 1234
    :cond_14
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    .line 1235
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 1236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_26

    .line 1237
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1249
    :goto_4
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1252
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 1253
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->setEmbeddedTabs()V

    .line 1255
    :cond_15
    const-string v27, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 1256
    .local v9, "display":Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v27

    div-int/lit8 v27, v27, 0x4

    add-int/lit8 v18, v27, -0x3

    .line 1258
    .local v18, "mTextSize":I
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 1259
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-eqz v27, :cond_29

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1262
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    .line 1304
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-eqz v27, :cond_2d

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a0ff1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1307
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1b92

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1313
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1b94

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1319
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1da0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1325
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1378
    :goto_6
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 1379
    if-eqz p1, :cond_2f

    .line 1380
    const-string v27, "com.android.settings.ACTION_BAR_INDEX"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 1381
    .local v21, "savedIndex":I
    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-le v0, v1, :cond_16

    .line 1382
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1383
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/Settings;->mPrevSelectedActionBarIndex:I

    .line 1384
    sget-boolean v27, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v27, :cond_16

    const-string v27, "Settings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Restore Tab index : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    .end local v7    # "bar":Landroid/app/ActionBar;
    .end local v9    # "display":Landroid/view/Display;
    .end local v18    # "mTextSize":I
    .end local v21    # "savedIndex":I
    :cond_16
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v27

    if-nez v27, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 1396
    const v27, 0x7f0a01d7

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 1399
    :cond_17
    if-eqz p1, :cond_18

    .line 1400
    const-string v27, "com.android.settings.CURRENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1401
    const-string v27, "com.android.settings.PARENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1405
    :cond_18
    if-eqz p1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1410
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    new-instance v29, Lcom/android/settings/Settings$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/Settings$4;-><init>(Lcom/android/settings/Settings;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1420
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/high16 v28, 0x7f030000

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setIcon(I)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1430
    :cond_1b
    sget-object v27, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 1431
    :cond_1c
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v27, :cond_1e

    .line 1432
    sget-boolean v27, Lcom/android/settings/Settings;->mIsFromSearch:Z

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_1d

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 1435
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, "extra_tab_id"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1436
    .local v24, "tap_index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1444
    .end local v24    # "tap_index":I
    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v27

    if-nez v27, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    move/from16 v27, v0

    if-nez v27, :cond_1f

    sget v27, Lcom/android/settings/Settings;->mDeviceProvisioned:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_33

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    move/from16 v27, v0

    if-eqz v27, :cond_33

    .line 1447
    :cond_1f
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    const/16 v29, 0x80

    invoke-virtual/range {v27 .. v29}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1449
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_33

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_33

    .line 1450
    const/16 v25, 0x0

    .line 1451
    .local v25, "tempView":Landroid/view/View;
    const/4 v11, 0x0

    .line 1452
    .local v11, "index":I
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "com.android.settings.SETTING_HEADER_ID"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1454
    .local v23, "tabName":Ljava/lang/String;
    if-eqz v23, :cond_33

    .line 1455
    const-string v27, "display_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1463
    :cond_20
    :goto_8
    if-eqz v25, :cond_33

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v16

    .line 1465
    .local v16, "mBar":Landroid/app/ActionBar;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActionBar;->getTabCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v10, v0, :cond_32

    .line 1466
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v17

    .line 1467
    .local v17, "mTab":Landroid/app/ActionBar$Tab;
    invoke-virtual/range {v17 .. v17}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    if-eqz v27, :cond_21

    .line 1468
    move v11, v10

    .line 1465
    :cond_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1076
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v14    # "isSubSettings":Z
    .end local v16    # "mBar":Landroid/app/ActionBar;
    .end local v17    # "mTab":Landroid/app/ActionBar$Tab;
    .end local v19    # "mUm":Landroid/os/UserManager;
    .end local v20    # "mUserHandle":Landroid/os/UserHandle;
    .end local v23    # "tabName":Ljava/lang/String;
    .end local v25    # "tempView":Landroid/view/View;
    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 1128
    .restart local v19    # "mUm":Landroid/os/UserManager;
    .restart local v20    # "mUserHandle":Landroid/os/UserHandle;
    :cond_23
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 1133
    :cond_24
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1217
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "isSubSettings":Z
    :cond_25
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 1239
    .end local v13    # "intent":Landroid/content/Intent;
    .restart local v7    # "bar":Landroid/app/ActionBar;
    :cond_26
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1243
    :cond_27
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 1244
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1247
    :cond_28
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 1264
    .restart local v9    # "display":Landroid/view/Display;
    .restart local v18    # "mTextSize":I
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1270
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000f

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1276
    :cond_2b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1290
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    .line 1293
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f04000e

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 1328
    :cond_2d
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v27

    if-eqz v27, :cond_2e

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a0ff1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1331
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1b92

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1337
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1b93

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1343
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a1b94

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1349
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 1354
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a0ff1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1356
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a0ff2

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1362
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a06a9

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1368
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mAccountTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a041a

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v27, v0

    const v28, 0x7f10002d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1374
    invoke-virtual {v7}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v27

    new-instance v28, Lcom/android/settings/Settings$SettingsTabListener;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/settings/Settings$SettingsTabListener;-><init>(Lcom/android/settings/Settings;Lcom/android/settings/Settings$1;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mMoreTabView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 1387
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/Settings;->getSelectedTabFromFragmentClass()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_7

    .line 1457
    .end local v7    # "bar":Landroid/app/ActionBar;
    .end local v9    # "display":Landroid/view/Display;
    .end local v18    # "mTextSize":I
    .restart local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "index":I
    .restart local v23    # "tabName":Ljava/lang/String;
    .restart local v25    # "tempView":Landroid/view/View;
    :cond_30
    :try_start_1
    const-string v27, "input_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mInputTabView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_8

    .line 1459
    :cond_31
    const-string v27, "general_headers"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/Settings;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_8

    .line 1471
    .restart local v10    # "i":I
    .restart local v16    # "mBar":Landroid/app/ActionBar;
    :cond_32
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1481
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v16    # "mBar":Landroid/app/ActionBar;
    .end local v23    # "tabName":Ljava/lang/String;
    .end local v25    # "tempView":Landroid/view/View;
    :cond_33
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v27

    const-string v28, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_IMAGE_STARTING_WINDOW"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v27

    if-eqz v27, :cond_36

    .line 1482
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v28, ":android:show_fragment"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1483
    .local v12, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v27

    if-nez v27, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v27

    if-nez v27, :cond_37

    :cond_34
    const/16 v22, 0x1

    .line 1485
    .local v22, "singlePane":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    move/from16 v27, v0

    if-nez v27, :cond_36

    if-nez p1, :cond_36

    if-eqz v12, :cond_35

    if-nez v22, :cond_36

    .line 1486
    :cond_35
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 1491
    .end local v12    # "initialFragment":Ljava/lang/String;
    .end local v22    # "singlePane":Z
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    return-void

    .line 1483
    .restart local v12    # "initialFragment":Ljava/lang/String;
    :cond_37
    const/16 v22, 0x0

    goto :goto_b

    .line 1475
    .end local v12    # "initialFragment":Ljava/lang/String;
    :catch_0
    move-exception v27

    goto :goto_a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f02063e

    const/16 v7, 0xcb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5875
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5877
    iget-boolean v3, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-eqz v3, :cond_4

    .line 5878
    const v3, 0x7f0a0ff5

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5879
    .local v1, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5880
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5881
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/Settings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 5890
    .end local v1    # "mMenuItem":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    const-string v3, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5891
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 5892
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.providers.settingsearch"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5896
    const/16 v3, 0xcc

    const v4, 0x7f0a06ae

    invoke-interface {p1, v5, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 5897
    .local v2, "mMenuSearch":Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5898
    const v3, 0x7f020013

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5901
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v2    # "mMenuSearch":Landroid/view/MenuItem;
    :cond_3
    return v6

    .line 5883
    :cond_4
    const v3, 0x7f0a0ff6

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5884
    .restart local v1    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5885
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5886
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/Settings;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 9
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f02063e

    const v7, 0x10008000

    const/16 v6, 0xcb

    const/4 v5, 0x0

    .line 5835
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 5836
    .local v2, "return_val":Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/Settings;->mFullModeinSmallTablet:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5837
    iget-boolean v3, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v3, :cond_1

    .line 5838
    const v3, 0x7f0a0ff5

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5839
    .local v1, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5840
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5842
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5843
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5844
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 5867
    :goto_0
    const/4 v2, 0x1

    .line 5869
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "mMenuItem":Landroid/view/MenuItem;
    .end local v2    # "return_val":Z
    :cond_0
    return v2

    .line 5858
    .restart local v2    # "return_val":Z
    :cond_1
    const v3, 0x7f0a0ff6

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 5859
    .restart local v1    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 5860
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 5862
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5863
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5864
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 2018
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2019
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 2020
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 2022
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 2023
    iget-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    if-eqz v0, :cond_1

    .line 2024
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->drivingModeContentObserver:Lcom/android/settings/Settings$DrivingModeContentObserver;

    .line 2027
    :cond_1
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 2439
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2440
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2441
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 2442
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2443
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 2444
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2445
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2449
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 12
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5235
    const/4 v5, 0x0

    .line 5236
    .local v5, "revert":Z
    iget-object v8, p0, Lcom/android/settings/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v8, :cond_3

    .line 5237
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5239
    .local v0, "airPlaneMode":I
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    .line 5240
    if-ne v0, v6, :cond_1

    .line 5241
    iget-object v6, p0, Lcom/android/settings/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a19af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a01db

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/android/settings/Settings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/Settings$7;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5249
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5250
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/Settings;->highlightHeader(I)V

    .line 5327
    .end local v0    # "airPlaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 5253
    .restart local v0    # "airPlaneMode":I
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5254
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5255
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.InternationalRoamingTab"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5261
    :goto_1
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5262
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5263
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5258
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.InternationalRoaming_SingleDual"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 5265
    .end local v0    # "airPlaneMode":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100683

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    if-eqz v8, :cond_4

    .line 5268
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5270
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 5272
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 5276
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006b9

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006ba

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10068e

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings/Settings;->isKioskContainer:Z

    if-eqz v8, :cond_6

    .line 5279
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.NetworkManagement"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5281
    .restart local v3    # "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/Settings;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 5282
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 5288
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10063f

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 5289
    const/4 v5, 0x1

    .line 5292
    :cond_7
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006a2

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 5293
    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_a

    move v1, v6

    .line 5295
    .local v1, "bAccessControlDisabled":Z
    :goto_2
    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_b

    move v2, v6

    .line 5298
    .local v2, "bBasicMode":Z
    :goto_3
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5302
    .end local v1    # "bAccessControlDisabled":Z
    .end local v2    # "bBasicMode":Z
    :cond_8
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100657

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 5303
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "toddler_mode_switch"

    const/4 v10, -0x2

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 5319
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 5321
    if-eqz v5, :cond_e

    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_e

    .line 5322
    iget-object v6, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/Settings;->highlightHeaderWithoutScroll(I)V

    goto/16 :goto_0

    :cond_a
    move v1, v7

    .line 5293
    goto :goto_2

    .restart local v1    # "bAccessControlDisabled":Z
    :cond_b
    move v2, v7

    .line 5295
    goto :goto_3

    .line 5305
    .end local v1    # "bAccessControlDisabled":Z
    :cond_c
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f4

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5312
    :cond_d
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f2

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    .line 5324
    :cond_e
    iput-object p1, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 2031
    iget-boolean v0, p0, Lcom/android/settings/Settings;->isKioskPersonal:Z

    if-eqz v0, :cond_0

    .line 2032
    const/4 v0, 0x0

    .line 2034
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2226
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 2227
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2228
    :cond_0
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 2229
    :cond_1
    const/4 v0, 0x1

    .line 2231
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5428
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 5431
    .local v0, "retval":Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 5435
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    .line 5436
    const/4 v0, 0x1

    .line 5439
    :cond_0
    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1504
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10065c

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f1006dd

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10065d

    if-ne v1, v2, :cond_1

    .line 1510
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1511
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    # invokes: Lcom/android/settings/Settings$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/settings/Settings$HeaderAdapter;->access$400(Lcom/android/settings/Settings$HeaderAdapter;Landroid/view/View;)V

    .line 1515
    :goto_0
    return-void

    .line 1514
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2349
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2352
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2353
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 2356
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2360
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2362
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2363
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 2366
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 5906
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5908
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5919
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    .line 5920
    invoke-static {}, Lcom/android/settings/Settings;->callSearchMenu()V

    .line 5923
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 5910
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mPhoneTabStyle:Z

    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/Settings;->mTabletTabStyle:Z

    if-eqz v1, :cond_4

    .line 5911
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5914
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    goto :goto_0

    .line 5913
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 5908
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1933
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1935
    iget-object v5, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_0

    .line 1937
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1943
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_1

    .line 1945
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1951
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1953
    iget-object v5, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 1954
    .local v4, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v4, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v5, :cond_2

    .line 1955
    check-cast v4, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v4    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1952
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1938
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1939
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 1946
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1947
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1959
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "settings_listui"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 1960
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1961
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "ActivityName"

    const-string v6, "com.android.settings.Settings"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string v5, "register"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1963
    iget-object v5, p0, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1966
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v5, :cond_5

    .line 1968
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1974
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1975
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v3, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v5, :cond_6

    .line 1976
    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 1979
    :cond_6
    iget-object v5, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1981
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1990
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1992
    :try_start_3
    iget-object v5, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2000
    :cond_7
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2001
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2003
    :try_start_4
    iget-object v5, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2010
    :cond_8
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2011
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2014
    :cond_9
    return-void

    .line 1969
    :catch_2
    move-exception v1

    .line 1970
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 1993
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 1994
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4

    .line 2004
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 2005
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 5332
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 5333
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5334
    const v3, 0x7f0a06be

    .line 5344
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5345
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5346
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_search"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5347
    sget v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    .line 5348
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_8

    .line 5349
    sget-boolean v0, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceStartFragment , mSearchDepthCounter : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 5351
    .local v2, "args":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 5352
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "args":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5355
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v0, "extra_from_search"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5357
    sget v0, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 5358
    iget-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5359
    iget-object v0, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5366
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 5367
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 5369
    const/4 v0, 0x1

    .line 5376
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_2
    return v0

    .line 5335
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5337
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5338
    const v3, 0x7f0a021d

    goto/16 :goto_0

    .line 5340
    :cond_6
    const v3, 0x7f0a021b

    goto/16 :goto_0

    .line 5362
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5363
    iget-object v0, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 5374
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v7, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 5376
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 1813
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1814
    sget-object v0, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    :cond_0
    sget-wide v0, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1816
    sput-wide v2, Lcom/android/settings/Settings;->mSearchHeaderID:J

    .line 1819
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1823
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1824
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "VerificationLog"

    const-string v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    :cond_0
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v4

    .line 1827
    .local v4, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1828
    invoke-virtual {p0}, Lcom/android/settings/Settings;->finish()V

    .line 1832
    :cond_1
    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1833
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/settings/Settings;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1834
    iget-object v7, p0, Lcom/android/settings/Settings;->mPagerListView:[Landroid/widget/ListView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1835
    .local v6, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v7, v6, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v7, :cond_2

    .line 1836
    check-cast v6, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v6    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v6}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1833
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1849
    .end local v2    # "i":I
    :cond_3
    new-instance v7, Lcom/android/settings/Settings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$5;-><init>(Lcom/android/settings/Settings;)V

    iput-object v7, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1855
    iget-object v7, p0, Lcom/android/settings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/android/settings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1858
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 1859
    .local v5, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v7, v5, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v7, :cond_4

    .line 1860
    check-cast v5, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v5    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v5}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 1864
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    if-eqz v7, :cond_b

    .line 1865
    iput-boolean v11, p0, Lcom/android/settings/Settings;->mJustCreated:Z

    .line 1870
    :goto_1
    iget-object v7, p0, Lcom/android/settings/Settings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1871
    iget-object v7, p0, Lcom/android/settings/Settings;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH_TO_SETTINGS"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1873
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "settings_listui"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 1874
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1875
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "ActivityName"

    const-string v8, "com.android.settings.Settings"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v7, "IconName"

    const-string v8, "Search;"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v7, "register"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1878
    iget-object v7, p0, Lcom/android/settings/Settings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 1882
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1883
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "com.android.settings.Search"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1884
    iget-object v7, p0, Lcom/android/settings/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1887
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1888
    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_2
    invoke-static {p0, v7}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1889
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 1900
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1901
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1902
    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1903
    iget-object v7, p0, Lcom/android/settings/Settings;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1906
    :cond_7
    sget-boolean v7, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v7, :cond_8

    const-string v7, "VerificationLog"

    const-string v8, "Executed"

    invoke-static {v7, v8}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1912
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "toddler_mode_switch"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/Settings;->mToddlerModeObserver:Lcom/android/settings/Settings$ToddlerModeObserver;

    const/4 v10, -0x2

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1916
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1917
    .local v3, "intentfilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1918
    iget-object v7, p0, Lcom/android/settings/Settings;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1922
    .end local v3    # "intentfilter":Landroid/content/IntentFilter;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1923
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/Settings;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v11, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1929
    :cond_a
    return-void

    .line 1867
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/Settings;->invalidateHeaders()V

    goto/16 :goto_1

    .line 1888
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :cond_c
    iget-object v7, p0, Lcom/android/settings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1791
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1794
    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    .line 1795
    const-string v1, "com.android.settings.CURRENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1797
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 1798
    const-string v1, "com.android.settings.PARENT_HEADER"

    iget-object v2, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1801
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1803
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1804
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 1805
    .local v0, "savedIndex":I
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save Tab index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_2
    const-string v1, "com.android.settings.ACTION_BAR_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1809
    .end local v0    # "savedIndex":I
    :cond_3
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 5457
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 5459
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings/Settings;)V

    .line 5461
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 5386
    if-nez p1, :cond_0

    .line 5387
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 5393
    :goto_0
    return-void

    .line 5389
    :cond_0
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5391
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/Settings;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 5381
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    const/16 v5, 0x160f

    const/4 v4, 0x1

    .line 1674
    iget-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_4

    .line 1675
    sget-boolean v1, Lcom/android/settings/Settings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_0
    if-nez p2, :cond_1

    .line 1687
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1689
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_1
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1691
    sget v1, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v1, v4, :cond_3

    .line 1692
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1693
    iget-object v1, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1701
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1702
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1703
    const-string v1, "extra_depth_counter_key"

    sget v2, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1705
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1708
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 1734
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1696
    :cond_3
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 1697
    iget-object v1, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1709
    :cond_4
    sget-boolean v1, Lcom/android/settings/Settings;->mIsFromSearch:Z

    if-eqz v1, :cond_6

    .line 1710
    if-nez p2, :cond_5

    .line 1711
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1712
    .restart local p2    # "args":Landroid/os/Bundle;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/Settings;->mIsFromSearch:Z

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1714
    :cond_5
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1715
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/Settings;->mIsFromSearch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1716
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1717
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    const-class v1, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1718
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/Settings;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1719
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/Settings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1730
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_1
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2242
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 2243
    iput-object v3, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2244
    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2247
    :cond_0
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2250
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment"

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2253
    :cond_1
    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/Settings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2254
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_4

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/Settings;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 2255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2257
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2259
    sget v2, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    if-le v2, v6, :cond_6

    .line 2260
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 2261
    iget-object v2, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2269
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2270
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2271
    const-string v2, "extra_depth_counter_key"

    sget v3, Lcom/android/settings/Settings;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2272
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/Settings;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2275
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 2276
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2277
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/Settings;->mOpenSearchHierarchy:Z

    .line 2280
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 2283
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2284
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2285
    invoke-virtual {p0}, Lcom/android/settings/Settings;->setEnablerForGuide()V

    .line 2289
    :cond_5
    return-void

    .line 2264
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 2265
    iget-object v2, p0, Lcom/android/settings/Settings;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
