.class public Lcom/android/settings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;,
        Lcom/android/settings/SettingsActivity$ToddlerModeObserver;,
        Lcom/android/settings/SettingsActivity$HeaderAdapter;,
        Lcom/android/settings/SettingsActivity$SettingsTabListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceProvisioned:I

.field private static mDirectSettingEnabler:Z

.field private static mFullModeinSmallTablet:Z

.field private static mIsFromSearch:Z

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

.field private drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

.field filter:Landroid/content/IntentFilter;

.field private isKioskContainer:Z

.field private isKioskPersonal:Z

.field mAccountTabView:Landroid/view/View;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActiveAppListObserver:Landroid/database/ContentObserver;

.field mApplicationsTabView:Landroid/view/View;

.field private mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field mConnectionTabView:Landroid/view/View;

.field private mContent:Landroid/view/ViewGroup;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field mDeviceTabView:Landroid/view/View;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field mDisplayTabView:Landroid/view/View;

.field private final mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

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

.field private mHandler:Landroid/os/Handler;

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

.field private mHomeActivitiesCount:I

.field private mInLocalHeaderSwitch:Z

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field mInputTabView:Landroid/view/View;

.field private mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

.field private mInternationalRoamingBlocked:Z

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

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

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mOpenSearchHierarchy:Z

.field private mPagerListView:[Landroid/widget/ListView;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneTabStyle:Z

.field mPrevSelectedActionBarIndex:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchDepthCounter:I

.field private mSearchFragmentBundle:Landroid/os/Bundle;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

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

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

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

.field private mToddlerModeObserver:Lcom/android/settings/SettingsActivity$ToddlerModeObserver;

.field private mTopLevelHeaderId:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prevSoundProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/SettingsActivity;->DBG:Z

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 356
    sput-boolean v1, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 394
    const/16 v0, 0xb4

    new-array v0, v0, [Ljava/lang/String;

    const-class v3, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-class v3, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-class v4, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-class v4, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-class v4, Lcom/android/settings/wifi/WifiShareProfile;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-class v4, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-class v4, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-class v4, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-class v4, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-class v4, Lcom/android/settings/FingerAirViewSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-class v4, Lcom/android/settings/AirViewSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-class v4, Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-class v4, Lcom/android/settings/TetherSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-class v4, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-class v4, Lcom/android/settings/vpn2/VpnSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-class v4, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-class v4, Lcom/android/settings/LocalePicker;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-class v4, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-class v4, Lcom/android/settings/voice/VoiceInputSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-class v4, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-class v4, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-class v4, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-class v4, Lcom/android/settings/HomeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-class v4, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-class v4, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-class v4, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-class v4, Lcom/android/settings/applications/ProcessStatsUi;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-class v4, Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-class v4, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-class v4, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-class v4, Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-class v4, Lcom/android/settings/PrivacySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-class v4, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-class v4, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-class v4, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "com.android.settings.accessibility.AccessibilitySettingsHearing"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "com.android.settings.accessibility.AccessibilitySettingsVision"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "com.android.settings.accessibility.AccessibilitySettingsMobility"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-class v4, Lcom/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-class v4, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-class v4, Lcom/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-class v4, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-class v4, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    const-class v4, Lcom/android/settings/accessibility/ToggleGlobalGesturePreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    const-class v4, Lcom/android/settings/accessibility/ToggleAirWakeUpPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2e

    const-class v4, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x2f

    const-class v4, Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x30

    const-class v4, Lcom/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x31

    const-class v4, Lcom/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x32

    const-class v4, Lcom/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x33

    const-class v4, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x34

    const-class v4, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x35

    const-class v4, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x36

    const-class v4, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x37

    const-class v4, Lcom/android/settings/nfc/AndroidBeam;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x38

    const-class v4, Lcom/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x39

    const-class v4, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3a

    const-class v4, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3b

    const-class v4, Lcom/android/settings/activekey/ActiveKeySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3c

    const-class v4, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3d

    const-class v4, Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3e

    const-class v4, Lcom/android/settings/CryptKeeperSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x3f

    const-class v4, Lcom/android/settings/CryptDecryptSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x40

    const-class v4, Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x41

    const-class v4, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x42

    const-class v4, Lcom/android/settings/DreamSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x43

    const-class v4, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x44

    const-class v4, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x45

    const-class v4, Lcom/android/settings/notification/ConditionProviderSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x46

    const-class v4, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x47

    const-class v4, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x48

    const-class v4, Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x49

    const-class v4, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4a

    const-class v4, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4b

    const-class v4, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4c

    const-class v4, Lcom/android/settings/MultiWindowSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4d

    const-class v4, Lcom/android/settings/NotificationPanelMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4e

    const-class v4, Lcom/android/settings/notification/NotificationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x4f

    const-class v4, Lcom/android/settings/easymode/EasyModeApp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x50

    const-class v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x51

    const-class v4, Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x52

    const-class v4, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x53

    const-class v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x54

    const-class v4, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x55

    const-class v4, Lcom/android/settings/RecommendedAppsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x56

    const-class v4, Lcom/android/settings/RecommendedAppsList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x57

    const-class v4, Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x58

    const-class v4, Lcom/android/settings/easymode/EasyMode;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x59

    const-class v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5a

    const-class v4, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5b

    const-class v4, Lcom/android/settings/notification/NotificationAppList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5c

    const-class v4, Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5d

    const-class v4, Lcom/android/settings/notification/OtherSoundSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5e

    const-class v4, Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x5f

    const-class v4, Lcom/android/settings/ApnSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x60

    const-class v4, Lcom/android/settings/AirplaneModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x61

    const-class v4, Lcom/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x62

    const-class v4, Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x63

    const-class v4, Lcom/android/settings/toolbox/ToolboxMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x64

    const-class v4, Lcom/android/settings/toolbox/ToolboxList;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x65

    const-class v4, Lcom/android/settings/powersavingmode/PowerSavingMode2014;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x66

    const-class v4, Lcom/android/settings/nfc/NfcSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x67

    const-class v4, Lcom/android/settings/nearby/NearbySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x68

    const-string v4, "com.android.settings.fingerprint.FingerPrintManagerUI"

    aput-object v4, v0, v3

    const/16 v3, 0x69

    const-string v4, "com.android.settings.fingerprint.PaypalPayment"

    aput-object v4, v0, v3

    const/16 v3, 0x6a

    const-string v4, "com.android.settings.fingerprint.FingerprintWebsignin"

    aput-object v4, v0, v3

    const/16 v3, 0x6b

    const-string v4, "com.android.settings.fingerprint.FingerprintSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x6c

    const-class v4, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x6d

    const-string v4, "com.android.settings.safetycare.SafetyCareSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x6e

    const-string v4, "com.android.settings.safetycare.SafetyCareEmergencyMode"

    aput-object v4, v0, v3

    const/16 v3, 0x6f

    const-string v4, "com.android.settings.safetycare.SafetyCareDisaster"

    aput-object v4, v0, v3

    const/16 v3, 0x70

    const-string v4, "com.android.settings.SettingsEmergencySettings"

    aput-object v4, v0, v3

    const/16 v3, 0x71

    const-class v4, Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x72

    const-class v4, Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x73

    const-class v4, Lcom/android/settings/SelectInfoCoverSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x74

    const-class v4, Lcom/android/settings/SViewCoverEdgeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x75

    const-class v4, Lcom/android/settings/WeatherSettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x76

    const-class v4, Lcom/android/settings/WallpaperSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x77

    const-class v4, Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x78

    const-class v4, Lcom/android/settings/myplace/MyPlaceSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x79

    const-class v4, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7a

    const-class v4, Lcom/android/settings/DockSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7b

    const-class v4, Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7c

    const-class v4, Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7d

    const-class v4, Lcom/android/settings/PenAirViewSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7e

    const-class v4, Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x7f

    const-class v4, Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x80

    const-class v4, Lcom/android/settings/dualclock/DualClockSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x81

    const-class v4, Lcom/android/settings/festivaleffect/FestivalEffectSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x82

    const-class v4, Lcom/android/settings/festivaleffect/FestivalEffectGuide;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x83

    const-string v4, "com.android.settings.TRoamingSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x84

    const-string v4, "com.android.settings.GlobalRoamingSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x85

    const-string v4, "com.android.settings.DCMHomeSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x86

    const-class v4, Lcom/android/settings/OneHandSideSoftKeyFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x87

    const-string v4, "com.android.settings.ethernet.EthernetSettings"

    aput-object v4, v0, v3

    const/16 v3, 0x88

    const-class v4, Lcom/android/settings/applications/AppOpsSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x89

    const-class v4, Lcom/android/settings/DrivingModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8a

    const-class v4, Lcom/android/settings/powersavingmode/PowerSavingModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8b

    const-class v4, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8c

    const-class v4, Lcom/android/settings/OneHandEditMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8d

    const-class v4, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8e

    const-class v4, Lcom/android/settings/AccountMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x8f

    const-class v4, Lcom/android/settings/ToddlerModeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x90

    const-class v4, Lcom/android/settings/LockscreenMenuSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x91

    const-class v4, Lcom/android/settings/FontMenu;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x92

    const-class v4, Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x93

    const-class v4, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x94

    const-class v4, Lcom/android/settings/MasterClear;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x95

    const-class v4, Lcom/android/settings/VoiceInputControlSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x96

    const-class v4, Lcom/android/settings/OneHandSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x97

    const-class v4, Lcom/android/settings/AirButtonHelp;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x98

    const-class v4, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x99

    const-class v4, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9a

    const-class v4, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9b

    const-class v4, Lcom/android/settings/LedIndicatorSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9c

    const-class v4, Lcom/android/settings/LockScreenSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9d

    const-class v4, Lcom/android/settings/Settings$AssistantMenuPreferenceFragmentActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9e

    const-class v4, Lcom/android/settings/SmartcardCredentialSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0x9f

    const-class v4, Lcom/android/settings/ReadingMode;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa0

    const-string v4, "com.android.settings.ContextualPageSettings"

    aput-object v4, v0, v3

    const/16 v3, 0xa1

    const-string v4, "com.android.settings.motion.MotionSettings"

    aput-object v4, v0, v3

    const/16 v3, 0xa2

    const-string v4, "com.android.settings.AssistantMenuPreferenceFragment"

    aput-object v4, v0, v3

    const/16 v3, 0xa3

    const-string v4, "com.android.settings.colorblind.ColorChipReport"

    aput-object v4, v0, v3

    const/16 v3, 0xa4

    const-class v4, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa5

    const-class v4, Lcom/android/settings/LaunchApplication;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa6

    const-class v4, Lcom/android/settings/ApplicationsSettingsVZW;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa7

    const-class v4, Lcom/android/settings/SoftwareUpdateSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa8

    const-class v4, Lcom/android/settings/motion2014/MotionSettings2014;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xa9

    const-class v4, Lcom/android/settings/BlockSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xaa

    const-class v4, Lcom/android/settings/KidsHomeMode;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xab

    const-string v4, "com.android.settings.myprofile.ClockWidgetPreference"

    aput-object v4, v0, v3

    const/16 v3, 0xac

    const-string v4, "com.android.settings.dualclock.DualClockSetting"

    aput-object v4, v0, v3

    const/16 v3, 0xad

    const-string v4, "com.android.settings.mirrorlink.MirrorLink"

    aput-object v4, v0, v3

    const/16 v3, 0xae

    const-class v4, Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xaf

    const-string v4, "com.android.settings.dmr.DMRSettings"

    aput-object v4, v0, v3

    const/16 v3, 0xb0

    const-string v4, "com.android.settings.festivaleffect.FestivalEffectSettings"

    aput-object v4, v0, v3

    const/16 v3, 0xb1

    const-class v4, Lcom/android/settings/SettingsCommonPreference;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/16 v3, 0xb2

    const-string v4, "com.android.settings.notification.NotificationSettings"

    aput-object v4, v0, v3

    const/16 v3, 0xb3

    const-class v4, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 693
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    .line 739
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    .line 740
    sput-boolean v1, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    .line 742
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    .line 746
    sput-boolean v1, Lcom/android/settings/SettingsActivity;->mDirectSettingEnabler:Z

    .line 747
    sput-boolean v1, Lcom/android/settings/SettingsActivity;->misFromSettingsMainActivity:Z

    .line 753
    sput v2, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    .line 774
    sput-boolean v1, Lcom/android/settings/SettingsActivity;->mFullModeinSmallTablet:Z

    return-void

    :cond_0
    move v0, v2

    .line 282
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

    .line 274
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 364
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 589
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_KNOX:[I

    .line 657
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    .line 700
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 701
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 716
    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/android/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/android/settings/search/DynamicIndexableContentMonitor;

    .line 734
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 741
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 745
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    .line 756
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    .line 770
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    .line 771
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    .line 782
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mInternationalRoamingBlocked:Z

    .line 791
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mJustCreated:Z

    .line 797
    iput v3, p0, Lcom/android/settings/SettingsActivity;->MHS_REQUEST:I

    .line 803
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsActivity;->currentSoundProfile:I

    .line 804
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/SettingsActivity;->prevSoundProfile:I

    .line 815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFirstPage:Ljava/util/List;

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondPage:Ljava/util/List;

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mThirdPage:Ljava/util/List;

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mFourthPage:Ljava/util/List;

    .line 820
    new-array v0, v7, [Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mPagerListView:[Landroid/widget/ListView;

    .line 822
    const/16 v0, 0x11

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

    const/16 v1, 0x10

    const-string v2, "DMRSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab:[Ljava/lang/String;

    .line 842
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

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab:[Ljava/lang/String;

    .line 886
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccountSyncSettings"

    aput-object v1, v0, v3

    const-string v1, "BackupAssistantPlusSettings"

    aput-object v1, v0, v4

    const-string v1, "HomeSyncBackupAndRestoreSettings"

    aput-object v1, v0, v5

    const-string v1, "CloudPhotosSyncFragment"

    aput-object v1, v0, v6

    const-string v1, "CloudVideosSyncFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CloudSettingsMainFragment"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInAccountTab:[Ljava/lang/String;

    .line 896
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DeviceInfoSettings"

    aput-object v1, v0, v3

    const-string v1, "ManageApplications"

    aput-object v1, v0, v4

    const-string v1, "LocationSettings"

    aput-object v1, v0, v5

    const-string v1, "SecuritySettings"

    aput-object v1, v0, v6

    const-string v1, "SoundSettings"

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

    const-string v2, "CryptDecryptSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CryptSDCardSettings"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PowerSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SoftwareUpdateSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MyPlace"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInMoreTab:[Ljava/lang/String;

    .line 918
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

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    .line 941
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SoundSettings"

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

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInDisplay:[Ljava/lang/String;

    .line 962
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

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInInputandControlTab:[Ljava/lang/String;

    .line 979
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

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab:[Ljava/lang/String;

    .line 1011
    const/16 v0, 0x29

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

    const-string v2, "SoundSettings"

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

    const/16 v1, 0x28

    const-string v2, "NotificationSettings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    .line 1055
    const/16 v0, 0x21

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

    const-string v2, "CryptDecryptSettings"

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

    const/16 v1, 0x1d

    const-string v2, "DateTimeSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "InputMethodAndLanguageSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "TextToSpeechSettings"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "KeyboardLayoutPickerFragment"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    .line 1091
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ManageApplications"

    aput-object v1, v0, v3

    const-string v1, "LaunchApplication"

    aput-object v1, v0, v4

    const-string v1, "ApplicationsSettingsVZW"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    .line 1098
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mTetheredData:I

    .line 1101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->filter:Landroid/content/IntentFilter;

    .line 1103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 1105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 1108
    new-instance v0, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    .line 1118
    new-instance v0, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 1129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 1133
    new-instance v0, Lcom/android/settings/SettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 1147
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1148
    iput v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 6704
    new-instance v0, Lcom/android/settings/SettingsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$13;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6843
    new-instance v0, Lcom/android/settings/SettingsActivity$14;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$14;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    .line 6855
    new-instance v0, Lcom/android/settings/SettingsActivity$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsActivity$15;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    .line 6883
    return-void

    .line 364
    :array_0
    .array-data 4
        0x7f100655
        0x7f100657
        0x7f100659
        0x7f10065f
        0x7f100672
        0x7f100667
        0x7f100674
        0x7f100676
        0x7f100675
        0x7f100677
        0x7f100647
        0x7f100678
        0x7f10067c
        0x7f100660
        0x7f10067d
        0x7f10067e
        0x7f100679
        0x7f10063e
        0x7f10067f
        0x7f100680
        0x7f100683
        0x7f100681
        0x7f10066c
        0x7f10067a
        0x7f100646
        0x7f1006ac
        0x7f100116
    .end array-data

    .line 589
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
        0x7f10068c
        0x7f10068e
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

    .line 657
    :array_2
    .array-data 4
        0x7f100656
        0x7f10065e
        0x7f1006e4
        0x7f100658
        0x7f10065f
        0x7f100683
        0x7f100667
        0x7f10069b
        0x7f100669
        0x7f10066a
        0x7f1006e5
        0x7f10065a
        0x7f1006f2
        0x7f100698
        0x7f1006e1
        0x7f100694
        0x7f10069f
        0x7f1006ae
        0x7f1006b9
        0x7f1006ba
        0x7f10068e
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/SettingsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings/SettingsActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/settings/SettingsActivity;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method static synthetic access$1800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->mDirectSettingEnabler:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 274
    sput-boolean p0, Lcom/android/settings/SettingsActivity;->mDirectSettingEnabler:Z

    return p0
.end method

.method static synthetic access$2600()J
    .locals 2

    .prologue
    .line 274
    sget-wide v0, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    return-wide v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800()Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/android/settings/SettingsActivity;->isHotspotTestMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/android/settings/SettingsActivity;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$3002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 274
    sput p0, Lcom/android/settings/SettingsActivity;->mWifiSummaryId:I

    return p0
.end method

.method static synthetic access$3100(Lcom/android/settings/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget v0, p0, Lcom/android/settings/SettingsActivity;->currentSoundProfile:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/settings/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/settings/SettingsActivity;->currentSoundProfile:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/settings/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget v0, p0, Lcom/android/settings/SettingsActivity;->prevSoundProfile:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/settings/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/android/settings/SettingsActivity;->prevSoundProfile:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SettingsActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2033
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2034
    const v0, 0x7f070038

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 2035
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 2036
    return-void
.end method

.method public static callSearchMenu()V
    .locals 3

    .prologue
    .line 6813
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6814
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/settingssearch/SettingsSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6815
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6816
    sget-object v1, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6818
    :cond_0
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 1587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1588
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 7

    .prologue
    .line 2329
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2333
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 2376
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 2334
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    .line 2335
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2336
    :cond_2
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->switchTopLevelHeaderId(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    .line 2339
    :cond_3
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 2340
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 2353
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2354
    .local v3, "parentHeaderTitleRes":I
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2355
    .local v2, "parentFragmentClass":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2356
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2357
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 2358
    if-eqz v3, :cond_0

    .line 2359
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2362
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "parentFragmentClass":Ljava/lang/String;
    .end local v3    # "parentHeaderTitleRes":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2367
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2369
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 2370
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2371
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v1

    .line 2373
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get Metadata for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 6822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.sec.knox.shortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6823
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.bridge"

    const-string v2, "com.sec.knox.bridge.handlers.NotificationHandler"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6825
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6826
    const-string v1, "actions"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6827
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6828
    return-object v0
.end method

.method private getSelectedTabFromFragmentClass()I
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6399
    sget-boolean v5, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSelectedTabFromFragmentClass() mFragmentClass : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6401
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 6402
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    const-string v6, "DCMHomeSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6403
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 6404
    new-instance v2, Ljava/lang/Long;

    const-wide/32 v4, 0x7f100685

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    .line 6405
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 6496
    :cond_1
    :goto_0
    return v1

    .line 6408
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 6409
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 6410
    :cond_4
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v1, v2

    .line 6411
    goto :goto_0

    .line 6408
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6415
    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_b

    .line 6416
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab_2014:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6417
    :cond_9
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6415
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6422
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 6423
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab_2014:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6424
    :cond_d
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v1, v3

    .line 6425
    goto/16 :goto_0

    .line 6422
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6429
    :cond_10
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 6430
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInApplicationsTab_2014:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 6431
    :cond_12
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v1, v4

    .line 6432
    goto/16 :goto_0

    .line 6429
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6435
    .end local v0    # "i":I
    :cond_15
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 6437
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1a

    .line 6438
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab_2013:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6439
    :cond_17
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move v1, v2

    .line 6440
    goto/16 :goto_0

    .line 6437
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 6444
    :cond_1a
    const/4 v0, 0x0

    :goto_6
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInDisplay:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1e

    .line 6445
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    :cond_1b
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDisplay:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 6446
    :cond_1c
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6444
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6451
    :cond_1e
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInInputandControlTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 6452
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInInputandControlTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 6453
    :cond_20
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move v1, v3

    .line 6454
    goto/16 :goto_0

    .line 6451
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 6458
    :cond_23
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 6459
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_24
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInGeneralTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 6460
    :cond_25
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_26

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v1, v4

    .line 6461
    goto/16 :goto_0

    .line 6458
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6466
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2d

    .line 6467
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_2c

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInConnectionTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 6468
    :cond_2a
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 0"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move v1, v2

    .line 6469
    goto/16 :goto_0

    .line 6466
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 6473
    :cond_2d
    const/4 v0, 0x0

    :goto_a
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_31

    .line 6474
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v5, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    :cond_2e
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->SettingsInDeviceTab:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 6475
    :cond_2f
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Settings"

    const-string v3, "getSelectedTabFromFragmentClass() returns 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6473
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 6480
    :cond_31
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInAccountTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 6481
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_32
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->SettingsInAccountTab:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6482
    :cond_33
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_34

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    move v1, v3

    .line 6483
    goto/16 :goto_0

    .line 6480
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 6487
    :cond_36
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->SettingsInMoreTab:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 6488
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    :cond_37
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->SettingsInMoreTab:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 6489
    :cond_38
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_39

    const-string v1, "Settings"

    const-string v2, "getSelectedTabFromFragmentClass() returns 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v1, v4

    .line 6490
    goto/16 :goto_0

    .line 6487
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    move v1, v2

    .line 6496
    goto/16 :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 1805
    :cond_0
    :goto_0
    return-object v0

    .line 1795
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1796
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

    .line 1798
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

    .line 1802
    :cond_3
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .param p1, "mHeader"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6378
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 6379
    .local v2, "voice_control_intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 6380
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6381
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6382
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 6386
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1232
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1234
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1235
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1237
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 6670
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6672
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_2

    .line 6673
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 6674
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

    .line 6676
    :cond_0
    sget-boolean v3, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "Settings"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6683
    :cond_1
    :goto_0
    return v2

    .line 6680
    :catch_0
    move-exception v0

    .line 6681
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Settings"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6683
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isHotspotTestMode()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6520
    const/4 v6, 0x0

    .line 6521
    .local v6, "isTestMode":Z
    sget-boolean v9, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v9, :cond_3

    .line 6522
    const-string v0, "/data/misc/wifi/hotspot_info"

    .line 6523
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6524
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 6527
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6528
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6529
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6530
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    const-string v9, "ATT_HOTSPOT"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6531
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-ne v9, v7, :cond_1

    move v6, v7

    :goto_1
    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    .line 6538
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    .line 6539
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6545
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    :cond_3
    :goto_2
    return v6

    .line 6540
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 6541
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 6534
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 6535
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6538
    if-eqz v1, :cond_3

    .line 6539
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 6540
    :catch_2
    move-exception v4

    .line 6541
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 6537
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 6538
    :goto_4
    if-eqz v1, :cond_4

    .line 6539
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 6542
    :cond_4
    :goto_5
    throw v7

    .line 6540
    :catch_3
    move-exception v4

    .line 6541
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 6537
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 6534
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1359
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return v2

    .line 1363
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1364
    sget-object v3, Lcom/android/settings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 1363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isOrangeCustomer()Z
    .locals 1

    .prologue
    .line 6374
    const/4 v0, 0x0

    return v0
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1354
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 1355
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceControlEnabled()Z
    .locals 2

    .prologue
    .line 6390
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 6391
    .local v0, "mBargeInRecognizer":Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v1, :cond_0

    .line 6392
    const/4 v1, 0x1

    .line 6394
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2046
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v12, 0x0

    .line 2048
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 2049
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 2053
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2057
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2058
    .local v10, "nodeName":Ljava/lang/String;
    const-string v17, "dashboard-categories"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 2059
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_0
    move-exception v5

    .line 2180
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2184
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v17

    .line 2064
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 2066
    .local v4, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 2068
    .local v11, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_19

    .line 2069
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 2073
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2074
    const-string v17, "dashboard-category"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 2075
    new-instance v3, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v3}, Lcom/android/settings/dashboard/DashboardCategory;-><init>()V

    .line 2077
    .local v3, "category":Lcom/android/settings/dashboard/DashboardCategory;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2079
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 2083
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 2085
    .local v15, "tv":Landroid/util/TypedValue;
    if-eqz v15, :cond_6

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 2086
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 2087
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 2092
    :cond_6
    :goto_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2094
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 2096
    .local v6, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_17

    .line 2097
    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    .line 2101
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2102
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string v17, "dashboard-tile"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 2103
    new-instance v14, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v14}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 2105
    .local v14, "tile":Lcom/android/settings/dashboard/DashboardTile;
    sget-object v17, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 2107
    const/16 v17, 0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/settings/dashboard/DashboardTile;->id:J

    .line 2110
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 2112
    if-eqz v15, :cond_9

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2113
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 2114
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    .line 2119
    :cond_9
    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 2121
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2122
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 2123
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->summaryRes:I

    .line 2128
    :cond_a
    :goto_4
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/android/settings/dashboard/DashboardTile;->iconRes:I

    .line 2130
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 2132
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 2134
    if-nez v4, :cond_b

    .line 2135
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2138
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    :cond_b
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 2140
    .local v7, "innerDepth2":I
    :cond_c
    :goto_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_13

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v7, :cond_13

    .line 2141
    :cond_d
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 2145
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2146
    .local v9, "innerNodeName2":Ljava/lang/String;
    const-string v17, "extra"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "extra"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2148
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 2181
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v4    # "curBundle":Landroid/os/Bundle;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerDepth2":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    .end local v10    # "nodeName":Ljava/lang/String;
    .end local v11    # "outerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    .end local v15    # "tv":Landroid/util/TypedValue;
    .end local v16    # "type":I
    :catch_1
    move-exception v5

    .line 2182
    .local v5, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Error parsing categories"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2089
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .restart local v4    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "nodeName":Ljava/lang/String;
    .restart local v11    # "outerDepth":I
    .restart local v13    # "sa":Landroid/content/res/TypedArray;
    .restart local v15    # "tv":Landroid/util/TypedValue;
    .restart local v16    # "type":I
    :cond_e
    :try_start_4
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 2116
    .restart local v6    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    .restart local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_f
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 2125
    :cond_10
    iget-object v0, v15, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_4

    .line 2150
    .restart local v7    # "innerDepth2":I
    .restart local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_11
    const-string v17, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v12, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_5

    .line 2154
    :cond_12
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_5

    .line 2158
    .end local v9    # "innerNodeName2":Ljava/lang/String;
    :cond_13
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v17

    if-lez v17, :cond_14

    .line 2159
    iput-object v4, v14, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 2160
    const/4 v4, 0x0

    .line 2164
    :cond_14
    iget-wide v0, v14, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7f100672

    cmp-long v17, v18, v20

    if-nez v17, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2165
    :cond_15
    invoke-virtual {v3, v14}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(Lcom/android/settings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 2169
    .end local v7    # "innerDepth2":I
    .end local v14    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_16
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 2173
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2175
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v6    # "innerDepth":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "tv":Landroid/util/TypedValue;
    :cond_18
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2184
    :cond_19
    if-eqz v12, :cond_1a

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2186
    :cond_1a
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 4918
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

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

.method private onCreateTablet(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2477
    const-string v19, "Settings"

    const-string v20, "onCreate"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    new-instance v19, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;-><init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    .line 2481
    sget-object v19, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "driving_mode_on"

    invoke-static/range {v20 .. v20}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2482
    sget-object v19, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    .line 2483
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v19, v0

    if-eqz v19, :cond_20

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    .line 2487
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->populateKnoxCustomSettingsMap()V

    .line 2490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "settings:ui_options"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2491
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string v21, "settings:ui_options"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setUiOptions(I)V

    .line 2495
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.android.settings.Settings$WifiDisplaySettingsActivity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.android.settings.Settings$WifiApSettingsActivity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2499
    :cond_1
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v19, :cond_2

    const-string v19, "Settings"

    const-string v20, "setup spilt"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setUiOptions(I)V

    .line 2504
    :cond_3
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 2506
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    .line 2507
    const-string v19, "VZW"

    sget-object v20, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "p4noteltevzw"

    const-string v20, "ro.product.name"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 2508
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setMultiPane(Z)V

    .line 2511
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "device_provisioned"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    .line 2526
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    .line 2532
    const-string v19, "development"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 2535
    const-string v19, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "com.android.settings.Settings$DisplaySettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "com.android.settings.Settings$InputAndControlSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "com.android.settings.Settings$GeneralSettingsTab"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_21

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "settings_listui"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_21

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    .line 2540
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "settings_listui"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-nez v19, :cond_22

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    .line 2541
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    .line 2544
    const-string v19, "VZW"

    sget-object v20, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v19

    if-nez v19, :cond_9

    .line 2545
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    .line 2546
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2547
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/SettingsActivity;->mFullModeinSmallTablet:Z

    .line 2552
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2553
    new-instance v19, Lcom/android/settings/SettingsActivity$ToddlerModeObserver;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$ToddlerModeObserver;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mToddlerModeObserver:Lcom/android/settings/SettingsActivity$ToddlerModeObserver;

    .line 2566
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 2567
    const v19, 0x7f0b0082

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 2569
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 2570
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 2571
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2575
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 2604
    sget-object v19, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2605
    :cond_c
    const-string v19, "com.android.settings.Settings"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/SettingsActivity;->misFromSettingsMainActivity:Z

    .line 2606
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2607
    .local v10, "intent":Landroid/content/Intent;
    const-string v19, "extra_from_search"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    .line 2608
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    if-eqz v19, :cond_e

    .line 2609
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 2610
    const-string v19, "extra_header_id"

    const-wide/16 v20, -0x1

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    .line 2611
    const-string v19, "extra_setting_value"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    .line 2612
    const-string v19, "extra_fragment_bundle_key"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 2613
    const-string v19, "extra_second_fragment_bundle_key"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 2615
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v19, :cond_d

    const-string v19, "SettingsSearch"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "extra_parent_preference_key"

    const-string v22, "None"

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_d
    const-string v19, "extra_depth_counter_key"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 2618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 2619
    sget v19, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_23

    const/16 v19, 0x1

    :goto_3
    sput-boolean v19, Lcom/android/settings/SettingsActivity;->mDirectSettingEnabler:Z

    .line 2625
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    sget v19, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 2630
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 2632
    .local v5, "bar":Landroid/app/ActionBar;
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 2633
    sget-object v19, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 2635
    const-string v19, "VZW"

    sget-object v20, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v19

    if-eqz v19, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_25

    .line 2636
    :cond_11
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/SettingsActivity;->mFullModeinSmallTablet:Z

    .line 2637
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 2638
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    .line 2639
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 2651
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2654
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 2655
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setEmbeddedTabs()V

    .line 2657
    :cond_12
    const-string v19, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 2658
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x4

    add-int/lit8 v13, v19, -0x3

    .line 2660
    .local v13, "mTextSize":I
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 2661
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v19

    if-eqz v19, :cond_27

    .line 2662
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    .line 2663
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    .line 2664
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    .line 2665
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mApplicationsTabView:Landroid/view/View;

    .line 2708
    :cond_13
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v19

    if-eqz v19, :cond_29

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a0ff1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2711
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1b92

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2717
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1b94

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2723
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1da0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2729
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mApplicationsTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2782
    :goto_6
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 2783
    if-eqz p1, :cond_2b

    .line 2784
    const-string v19, "com.android.settings.ACTION_BAR_INDEX"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 2785
    .local v14, "savedIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_14

    .line 2786
    invoke-virtual {v5, v14}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2787
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    .line 2788
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v19, :cond_14

    const-string v19, "Settings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Restore Tab index : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v5    # "bar":Landroid/app/ActionBar;
    .end local v6    # "display":Landroid/view/Display;
    .end local v13    # "mTextSize":I
    .end local v14    # "savedIndex":I
    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v19

    if-nez v19, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v19

    if-eqz v19, :cond_15

    .line 2797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 2800
    const v19, 0x7f0a01d7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 2804
    :cond_15
    if-eqz p1, :cond_16

    .line 2805
    const-string v19, "com.android.settings.CURRENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2806
    const-string v19, "com.android.settings.PARENT_HEADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 2810
    :cond_16
    if-eqz p1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2815
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/android/settings/SettingsActivity$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$9;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsActivity;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 2825
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/high16 v20, 0x7f030000

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setIcon(I)V

    .line 2829
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v19

    if-eqz v19, :cond_19

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 2836
    :cond_19
    sget-object v19, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 2837
    :cond_1a
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    if-eqz v19, :cond_1c

    .line 2838
    sget-boolean v19, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 2839
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    move/from16 v19, v0

    if-nez v19, :cond_1b

    sget v19, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c

    .line 2841
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "extra_tab_id"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2842
    .local v17, "tap_index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2850
    .end local v17    # "tap_index":I
    :cond_1c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v19

    if-nez v19, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v19

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    sget v19, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2f

    .line 2853
    :cond_1d
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v20

    const/16 v21, 0x80

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 2855
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_2f

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2f

    .line 2856
    const/16 v18, 0x0

    .line 2857
    .local v18, "tempView":Landroid/view/View;
    const/4 v8, 0x0

    .line 2858
    .local v8, "index":I
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "com.android.settings.SETTING_HEADER_ID"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2860
    .local v16, "tabName":Ljava/lang/String;
    if-eqz v16, :cond_2f

    .line 2861
    const-string v19, "display_headers"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 2862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v18, v0

    .line 2869
    :cond_1e
    :goto_8
    if-eqz v18, :cond_2f

    .line 2870
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    .line 2871
    .local v11, "mBar":Landroid/app/ActionBar;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    invoke-virtual {v11}, Landroid/app/ActionBar;->getTabCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2e

    .line 2872
    invoke-virtual {v11, v7}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v12

    .line 2873
    .local v12, "mTab":Landroid/app/ActionBar$Tab;
    invoke-virtual {v12}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    if-eqz v19, :cond_1f

    .line 2874
    move v8, v7

    .line 2871
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 2483
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v11    # "mBar":Landroid/app/ActionBar;
    .end local v12    # "mTab":Landroid/app/ActionBar$Tab;
    .end local v16    # "tabName":Ljava/lang/String;
    .end local v18    # "tempView":Landroid/view/View;
    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2535
    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2540
    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2619
    .restart local v10    # "intent":Landroid/content/Intent;
    :cond_23
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 2641
    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v5    # "bar":Landroid/app/ActionBar;
    :cond_24
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 2645
    :cond_25
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->twPutTabsOnTop(Z)V

    .line 2646
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 2649
    :cond_26
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_4

    .line 2666
    .restart local v6    # "display":Landroid/view/Display;
    .restart local v13    # "mTextSize":I
    :cond_27
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 2667
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    .line 2668
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    .line 2669
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    .line 2670
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 2672
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    .line 2673
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mAccountTabView:Landroid/view/View;

    .line 2675
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f04000f

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mMoreTabView:Landroid/view/View;

    goto/16 :goto_5

    .line 2732
    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a0ff1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2735
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1b92

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2741
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1b93

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2747
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a1b94

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2753
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 2758
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a0ff1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2760
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a0ff2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2766
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mAccountTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a06a9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mAccountTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2772
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mAccountTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMoreTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0a041a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMoreTabView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f10002d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 2778
    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v19

    new-instance v20, Lcom/android/settings/SettingsActivity$SettingsTabListener;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mMoreTabView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_6

    .line 2791
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getSelectedTabFromFragmentClass()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_7

    .line 2863
    .end local v5    # "bar":Landroid/app/ActionBar;
    .end local v6    # "display":Landroid/view/Display;
    .end local v13    # "mTextSize":I
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v8    # "index":I
    .restart local v16    # "tabName":Ljava/lang/String;
    .restart local v18    # "tempView":Landroid/view/View;
    :cond_2c
    :try_start_1
    const-string v19, "input_headers"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_8

    .line 2865
    :cond_2d
    const-string v19, "general_headers"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    move-object/from16 v18, v0

    goto/16 :goto_8

    .line 2877
    .restart local v7    # "i":I
    .restart local v11    # "mBar":Landroid/app/ActionBar;
    :cond_2e
    invoke-virtual {v11, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2887
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v11    # "mBar":Landroid/app/ActionBar;
    .end local v16    # "tabName":Ljava/lang/String;
    .end local v18    # "tempView":Landroid/view/View;
    :cond_2f
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v19

    const-string v20, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_IMAGE_STARTING_WINDOW"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 2888
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, ":settings:show_fragment"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2889
    .local v9, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v19

    if-nez v19, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v19

    if-nez v19, :cond_33

    :cond_30
    const/4 v15, 0x1

    .line 2891
    .local v15, "singlePane":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    move/from16 v19, v0

    if-nez v19, :cond_32

    if-nez p1, :cond_32

    if-eqz v9, :cond_31

    if-nez v15, :cond_32

    .line 2892
    :cond_31
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mJustCreated:Z

    .line 2896
    .end local v9    # "initialFragment":Ljava/lang/String;
    .end local v15    # "singlePane":Z
    :cond_32
    return-void

    .line 2889
    .restart local v9    # "initialFragment":Ljava/lang/String;
    :cond_33
    const/4 v15, 0x0

    goto :goto_b

    .line 2881
    .end local v9    # "initialFragment":Ljava/lang/String;
    :catch_0
    move-exception v19

    goto :goto_a
.end method

.method private onPauseTablet()V
    .locals 6

    .prologue
    .line 3243
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    .line 3245
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3251
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_1

    .line 3253
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3259
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 3260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 3261
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mPagerListView:[Landroid/widget/ListView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 3262
    .local v3, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v4, :cond_2

    .line 3263
    check-cast v3, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v3    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->pause()V

    .line 3260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3246
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 3247
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3254
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 3255
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 3267
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 3268
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v2, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v4, :cond_4

    .line 3269
    check-cast v2, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->pause()V

    .line 3272
    :cond_4
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3274
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3283
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3285
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3293
    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3294
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mToddlerModeObserver:Lcom/android/settings/SettingsActivity$ToddlerModeObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3296
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3303
    :cond_6
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3304
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3307
    :cond_7
    return-void

    .line 3286
    :catch_2
    move-exception v0

    .line 3287
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 3297
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 3298
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4
.end method

.method private onResumeTablet()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3147
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 3148
    const-string v5, "Settings"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    .line 3151
    .local v2, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3152
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 3156
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 3157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 3158
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mPagerListView:[Landroid/widget/ListView;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3159
    .local v4, "mPagerlistAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v4, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v5, :cond_1

    .line 3160
    check-cast v4, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v4    # "mPagerlistAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->resume()V

    .line 3157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3173
    .end local v0    # "i":I
    :cond_2
    new-instance v5, Lcom/android/settings/SettingsActivity$10;

    invoke-direct {v5, p0}, Lcom/android/settings/SettingsActivity$10;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 3179
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 3182
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 3183
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v5, v3, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v5, :cond_3

    .line 3184
    check-cast v3, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->resume()V

    .line 3188
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mJustCreated:Z

    if-eqz v5, :cond_9

    .line 3189
    iput-boolean v9, p0, Lcom/android/settings/SettingsActivity;->mJustCreated:Z

    .line 3194
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3195
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mPersonalPageSelectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH_TO_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3198
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3199
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_2
    invoke-static {p0, v5}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3200
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->setEnablerForGuide()V

    .line 3211
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3212
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->filter:Landroid/content/IntentFilter;

    const-string v6, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3213
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->filter:Landroid/content/IntentFilter;

    const-string v6, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3214
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3217
    :cond_5
    sget-boolean v5, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "Settings"

    const-string v6, "Executed"

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3223
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_switch"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mToddlerModeObserver:Lcom/android/settings/SettingsActivity$ToddlerModeObserver;

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3227
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3228
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3229
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mJPNReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3233
    .end local v1    # "intentfilter":Landroid/content/IntentFilter;
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3234
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_panel_active_app_list"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mActiveAppListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3240
    :cond_8
    return-void

    .line 3191
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    goto/16 :goto_1

    .line 3199
    :cond_a
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_2
.end method

.method private populateKnoxCustomSettingsMap()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 4779
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4780
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100659

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4781
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10065b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4782
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100686

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4784
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f10067e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4786
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100679

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4787
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f100682

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4789
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    const v1, 0x7f1006ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4790
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 2393
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 2394
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2456
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 2458
    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 2459
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 2461
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 2464
    :cond_0
    return-void
.end method

.method private setEmbeddedTabs()V
    .locals 0

    .prologue
    .line 6517
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 1614
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 1615
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 1616
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1620
    :goto_0
    const/4 v1, 0x0

    .line 1626
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 1618
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1623
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 1624
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 1631
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 1632
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 1633
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1637
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1640
    :cond_0
    return-void

    .line 1635
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 1593
    const-string v2, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1594
    .local v1, "initialTitleResId":I
    if-lez v1, :cond_0

    .line 1595
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1596
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1597
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 1604
    :goto_0
    return-void

    .line 1599
    :cond_0
    iput v3, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1600
    const-string v2, ":settings:show_fragment_title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1601
    .local v0, "initialTitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 1602
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1601
    .restart local v0    # "initialTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private switchFragmentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fc"    # Ljava/lang/String;

    .prologue
    .line 4941
    move-object v0, p1

    .line 4942
    .local v0, "switchId":Ljava/lang/String;
    const-string v1, "com.android.settings.SPenSettingsMenu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4943
    const-string v0, "com.android.settings.PenSettingsMenu"

    .line 4945
    :cond_0
    return-object v0
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 2004
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2005
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2008
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 2009
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2010
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f100480

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2011
    if-eqz p7, :cond_1

    .line 2012
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 2014
    :cond_1
    if-eqz p4, :cond_2

    .line 2015
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2017
    :cond_2
    if-lez p5, :cond_4

    .line 2018
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 2022
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2023
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2024
    return-object v0

    .line 2019
    :cond_4
    if-eqz p6, :cond_3

    .line 2020
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 3318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 3319
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 3320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    .line 3321
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 3403
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3405
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3406
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 3408
    .local v5, "parentInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 3409
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3410
    .local v1, "fragmentClass":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 3411
    .local v2, "fragmentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3412
    .local v4, "parentHeader":Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3413
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 3414
    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3416
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 3417
    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 3419
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3420
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3422
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3427
    .end local v1    # "fragmentClass":Ljava/lang/String;
    .end local v2    # "fragmentTitle":Ljava/lang/CharSequence;
    .end local v4    # "parentHeader":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 3424
    :catch_0
    move-exception v3

    .line 3425
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v7, Lcom/android/settings/SettingsActivity;->DBG:Z

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

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2436
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 2449
    :goto_0
    return-void

    .line 2439
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100480

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 2440
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 2441
    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    .line 2447
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 2448
    iput-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 2443
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0a0ebb

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private switchTopLevelHeaderId(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 4922
    const/4 v0, -0x1

    .line 4923
    .local v0, "switchId":I
    packed-switch p1, :pswitch_data_0

    .line 4928
    move v0, p1

    .line 4932
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4933
    const v1, 0x7f10069b

    if-ne p1, v1, :cond_0

    .line 4934
    const v0, 0x7f100675

    .line 4937
    :cond_0
    return v0

    .line 4925
    :pswitch_0
    const v0, 0x7f1006af

    .line 4926
    goto :goto_0

    .line 4923
    :pswitch_data_0
    .packed-switch 0x7f10063e
        :pswitch_0
    .end packed-switch
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 42
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
    .line 3763
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v38, v0

    const-string v39, "show"

    sget-object v40, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v41, "eng"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 3766
    .local v34, "showDev":Z
    const/4 v11, 0x0

    .line 3768
    .local v11, "i":I
    const-string v38, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    .line 3769
    .local v36, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->clear()V

    .line 3772
    const/16 v25, 0x0

    .line 3773
    .local v25, "knoxCustomSettingsState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v24

    .line 3774
    .local v24, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v24, :cond_0

    .line 3775
    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSettingsHiddenState()I

    move-result v25

    .line 3779
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_e8

    .line 3780
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceActivity$Header;

    .line 3782
    .local v10, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    long-to-int v12, v0

    .line 3785
    .local v12, "id":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    const/16 v39, 0x64

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_d

    const/16 v17, 0x1

    .line 3789
    .local v17, "isKnoxUser":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    if-nez v38, :cond_1

    .line 3791
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 3793
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_2

    .line 3795
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->populateKnoxCustomSettingsMap()V

    .line 3799
    :cond_2
    const/16 v31, 0x0

    .line 3800
    .local v31, "removed":Z
    if-eqz v25, :cond_3

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3802
    .local v8, "element":Ljava/lang/Integer;
    if-eqz v8, :cond_3

    .line 3803
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 3805
    .local v37, "val":I
    and-int v38, v37, v25

    if-eqz v38, :cond_3

    .line 3807
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3808
    const/16 v31, 0x1

    .line 3812
    .end local v8    # "element":Ljava/lang/Integer;
    .end local v37    # "val":I
    :cond_3
    if-nez v31, :cond_0

    .line 3814
    const v38, 0x7f100686

    move/from16 v0, v38

    if-ne v12, v0, :cond_e

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "shopdemo"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 3818
    .local v33, "shop":I
    const/4 v4, 0x1

    .line 3819
    .local v4, "bEnable":Z
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v39, "enterprise_policy"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3820
    .local v26, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v38

    if-nez v38, :cond_4

    .line 3821
    const/4 v4, 0x0

    .line 3823
    :cond_4
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_5

    const-string v38, "Settings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "updateHeaderList : isLockScreenEnabled = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    :cond_5
    const/16 v38, 0x1

    move/from16 v0, v33

    move/from16 v1, v38

    if-eq v0, v1, :cond_6

    if-nez v4, :cond_7

    .line 3826
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4715
    .end local v4    # "bEnable":Z
    .end local v26    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v33    # "shop":I
    :cond_7
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_e5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    if-ne v0, v10, :cond_e5

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v38, v0

    const-wide/32 v40, 0x7f10063d

    cmp-long v38, v38, v40

    if-eqz v38, :cond_e5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v38

    if-nez v38, :cond_e5

    if-nez v17, :cond_e5

    .line 4718
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4734
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    if-nez v38, :cond_9

    .line 4736
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    .line 4738
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_a

    .line 4740
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->populateKnoxCustomSettingsMap()V

    .line 4744
    :cond_a
    if-eqz v25, :cond_b

    .line 4745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mKnoxCustomSettingsMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 4746
    .restart local v8    # "element":Ljava/lang/Integer;
    if-eqz v8, :cond_b

    .line 4747
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 4749
    .restart local v37    # "val":I
    and-int v38, v37, v25

    if-eqz v38, :cond_b

    .line 4751
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4758
    .end local v8    # "element":Ljava/lang/Integer;
    .end local v37    # "val":I
    :cond_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    if-ne v0, v10, :cond_0

    .line 4760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v38, v0

    if-nez v38, :cond_c

    invoke-static {v10}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v38

    if-eqz v38, :cond_c

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v38, v0

    const-wide/32 v40, 0x7f10063d

    cmp-long v38, v38, v40

    if-eqz v38, :cond_c

    .line 4763
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 4764
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v38

    if-eqz v38, :cond_c

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_c

    iget-wide v0, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    move-wide/from16 v38, v0

    const-wide/32 v40, 0x7f100645

    cmp-long v38, v38, v40

    if-nez v38, :cond_c

    .line 4765
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 4768
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4769
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 3785
    .end local v17    # "isKnoxUser":Z
    .end local v31    # "removed":Z
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 3827
    .restart local v17    # "isKnoxUser":Z
    .restart local v31    # "removed":Z
    :cond_e
    const v38, 0x7f1006a6

    move/from16 v0, v38

    if-ne v12, v0, :cond_11

    .line 3828
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_f

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_f

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_f

    .line 3830
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3831
    :cond_f
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_10

    .line 3832
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3833
    :cond_10
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3834
    const v38, 0x7f0a1197

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 3836
    :cond_11
    const v38, 0x7f1006da

    move/from16 v0, v38

    if-ne v12, v0, :cond_13

    .line 3837
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_12

    .line 3838
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3839
    :cond_12
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3840
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3842
    :cond_13
    const v38, 0x7f1006db

    move/from16 v0, v38

    if-ne v12, v0, :cond_17

    .line 3843
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_14

    .line 3844
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3845
    :cond_14
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 3846
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3848
    :cond_15
    const-string v38, "ro.product.device"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3849
    .local v6, "device":Ljava/lang/String;
    if-eqz v6, :cond_16

    const-string v38, "ms01"

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    :goto_4
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 3850
    .local v18, "isMS01":Ljava/lang/Boolean;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    if-eqz v38, :cond_7

    if-eqz v17, :cond_7

    .line 3851
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3849
    .end local v18    # "isMS01":Ljava/lang/Boolean;
    :cond_16
    const/16 v38, 0x0

    goto :goto_4

    .line 3853
    .end local v6    # "device":Ljava/lang/String;
    :cond_17
    const v38, 0x7f1006dc

    move/from16 v0, v38

    if-ne v12, v0, :cond_19

    .line 3854
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_18

    .line 3855
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3856
    :cond_18
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3857
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3859
    :cond_19
    const v38, 0x7f1006a2

    move/from16 v0, v38

    if-ne v12, v0, :cond_1a

    .line 3860
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.feature.multiwindow"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 3861
    .local v2, "UseMultiWindow":Z
    if-nez v2, :cond_7

    .line 3862
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3864
    .end local v2    # "UseMultiWindow":Z
    :cond_1a
    const v38, 0x7f100675

    move/from16 v0, v38

    if-ne v12, v0, :cond_1b

    .line 3865
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_7

    .line 3866
    const v38, 0x7f0a1e14

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto/16 :goto_2

    .line 3868
    :cond_1b
    const v38, 0x7f1006a1

    move/from16 v0, v38

    if-ne v12, v0, :cond_1c

    .line 3869
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_7

    .line 3870
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3872
    :cond_1c
    const v38, 0x7f1006dd

    move/from16 v0, v38

    if-ne v12, v0, :cond_1d

    .line 3873
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3874
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3876
    :cond_1d
    const v38, 0x7f10063d

    move/from16 v0, v38

    if-ne v12, v0, :cond_20

    .line 3877
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v38

    if-eqz v38, :cond_1f

    :cond_1e
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3878
    :cond_1f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3880
    :cond_20
    const v38, 0x7f1006e5

    move/from16 v0, v38

    if-ne v12, v0, :cond_21

    .line 3882
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3883
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3885
    :cond_21
    const v38, 0x7f100694

    move/from16 v0, v38

    if-ne v12, v0, :cond_22

    .line 3886
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->needsDockSettings()Z

    move-result v38

    if-nez v38, :cond_7

    .line 3887
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3888
    :cond_22
    const v38, 0x7f100673

    move/from16 v0, v38

    if-eq v12, v0, :cond_7

    const v38, 0x7f10067b

    move/from16 v0, v38

    if-eq v12, v0, :cond_7

    .line 3891
    const v38, 0x7f100657

    move/from16 v0, v38

    if-ne v12, v0, :cond_23

    .line 3893
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "android.hardware.wifi"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 3894
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3897
    :cond_23
    const v38, 0x7f100656

    move/from16 v0, v38

    if-ne v12, v0, :cond_26

    .line 3898
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v38

    const-string v39, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_24

    .line 3899
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3902
    :cond_24
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.oem.smartwifisupport"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    .line 3903
    .local v3, "appState":I
    const/16 v38, 0x2

    move/from16 v0, v38

    if-ne v3, v0, :cond_7

    .line 3904
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3906
    .end local v3    # "appState":I
    :catch_0
    move-exception v13

    .line 3907
    .local v13, "ie":Ljava/lang/IllegalArgumentException;
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_25

    const-string v38, "Settings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Check to see if target device support VOWIFI: + "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    :cond_25
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3912
    .end local v13    # "ie":Ljava/lang/IllegalArgumentException;
    :cond_26
    const v38, 0x7f1006e4

    move/from16 v0, v38

    if-ne v12, v0, :cond_27

    .line 3915
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3917
    :cond_27
    const v38, 0x7f100658

    move/from16 v0, v38

    if-ne v12, v0, :cond_28

    .line 3931
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3933
    :cond_28
    const v38, 0x7f100666

    move/from16 v0, v38

    if-ne v12, v0, :cond_29

    .line 3934
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/SettingsActivity;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    .line 3935
    const-string v38, "CTC"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 3936
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3942
    :cond_29
    const v38, 0x7f100661

    move/from16 v0, v38

    if-ne v12, v0, :cond_2b

    .line 3945
    const-string v38, "CDMA"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 3947
    :cond_2a
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3949
    :cond_2b
    const v38, 0x7f100659

    move/from16 v0, v38

    if-ne v12, v0, :cond_2c

    .line 3951
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "android.hardware.bluetooth"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 3952
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3954
    :cond_2c
    const v38, 0x7f100690

    move/from16 v0, v38

    if-ne v12, v0, :cond_2d

    .line 3958
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3960
    :cond_2d
    const v38, 0x7f10065f

    move/from16 v0, v38

    if-ne v12, v0, :cond_30

    .line 3962
    const-string v38, "network_management"

    invoke-static/range {v38 .. v38}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v27

    .line 3964
    .local v27, "netManager":Landroid/os/INetworkManagementService;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-nez v38, :cond_2f

    const/16 v20, 0x1

    .line 3966
    .local v20, "isOthersUser":Z
    :goto_5
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v38

    if-eqz v38, :cond_2e

    if-eqz v20, :cond_7

    .line 3967
    :cond_2e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 3969
    :catch_1
    move-exception v38

    goto/16 :goto_2

    .line 3964
    .end local v20    # "isOthersUser":Z
    :cond_2f
    const/16 v20, 0x0

    goto :goto_5

    .line 3972
    .end local v27    # "netManager":Landroid/os/INetworkManagementService;
    :cond_30
    const v38, 0x7f100678

    move/from16 v0, v38

    if-ne v12, v0, :cond_31

    .line 3975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    move/from16 v38, v0

    if-nez v38, :cond_7

    .line 3976
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3978
    :cond_31
    const v38, 0x7f100663

    move/from16 v0, v38

    if-ne v12, v0, :cond_33

    .line 3980
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v38

    if-eqz v38, :cond_32

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3982
    :cond_32
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3984
    :cond_33
    const v38, 0x7f100664

    move/from16 v0, v38

    if-ne v12, v0, :cond_35

    .line 3986
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v38

    if-eqz v38, :cond_34

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3988
    :cond_34
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3990
    :cond_35
    const v38, 0x7f100665

    move/from16 v0, v38

    if-ne v12, v0, :cond_37

    .line 3991
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v38

    if-eqz v38, :cond_36

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 3992
    :cond_36
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3994
    :cond_37
    const v38, 0x7f100666

    move/from16 v0, v38

    if-ne v12, v0, :cond_38

    .line 3995
    const-string v38, "CTC"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 3996
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 3998
    :cond_38
    const v38, 0x7f10065e

    move/from16 v0, v38

    if-ne v12, v0, :cond_39

    .line 4004
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4006
    :cond_39
    const v38, 0x7f100699

    move/from16 v0, v38

    if-ne v12, v0, :cond_3c

    .line 4007
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3a

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3b

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3b

    .line 4008
    :cond_3a
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4009
    :cond_3b
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4010
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4012
    :cond_3c
    const v38, 0x7f10069a

    move/from16 v0, v38

    if-ne v12, v0, :cond_40

    .line 4013
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3d

    .line 4014
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4015
    :cond_3d
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_3e

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3f

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3f

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3f

    .line 4016
    :cond_3e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4017
    :cond_3f
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4018
    const-string v38, "com.android.settings.motion2013.MotionSettings"

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 4021
    :cond_40
    const v38, 0x7f1006dc

    move/from16 v0, v38

    if-ne v12, v0, :cond_42

    .line 4022
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_41

    .line 4023
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4024
    :cond_41
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4025
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4027
    :cond_42
    const v38, 0x7f10069c

    move/from16 v0, v38

    if-ne v12, v0, :cond_44

    .line 4028
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_43

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4029
    :cond_43
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4031
    :cond_44
    const v38, 0x7f10069d

    move/from16 v0, v38

    if-ne v12, v0, :cond_46

    .line 4032
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_45

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_45

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4035
    :cond_45
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4037
    :cond_46
    const v38, 0x7f1006ce

    move/from16 v0, v38

    if-ne v12, v0, :cond_48

    .line 4038
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v38

    if-eqz v38, :cond_47

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4039
    :cond_47
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4041
    :cond_48
    const v38, 0x7f10069b

    move/from16 v0, v38

    if-ne v12, v0, :cond_49

    .line 4047
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4048
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4050
    :cond_49
    const v38, 0x7f100688

    move/from16 v0, v38

    if-ne v12, v0, :cond_4b

    .line 4051
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4a

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4052
    :cond_4a
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4054
    :cond_4b
    const v38, 0x7f1006ec

    move/from16 v0, v38

    if-ne v12, v0, :cond_4c

    .line 4055
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4056
    :cond_4c
    const v38, 0x7f1006ab

    move/from16 v0, v38

    if-ne v12, v0, :cond_4d

    .line 4062
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4064
    :cond_4d
    const v38, 0x7f1006ac

    move/from16 v0, v38

    if-ne v12, v0, :cond_4f

    .line 4066
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-eqz v38, :cond_4e

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_4e

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_4e

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4070
    :cond_4e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4072
    :cond_4f
    const v38, 0x7f10068a

    move/from16 v0, v38

    if-ne v12, v0, :cond_51

    .line 4073
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-nez v38, :cond_50

    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_50

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4077
    :cond_50
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4079
    :cond_51
    const v38, 0x7f1006e8

    move/from16 v0, v38

    if-ne v12, v0, :cond_53

    .line 4081
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_52

    const-string v38, "com.sec.KidsSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4082
    :cond_52
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4084
    :cond_53
    const v38, 0x7f100693

    move/from16 v0, v38

    if-ne v12, v0, :cond_55

    .line 4085
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_54

    .line 4090
    const-string v38, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 4086
    :cond_54
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4092
    :cond_55
    const v38, 0x7f10063c

    move/from16 v0, v38

    if-ne v12, v0, :cond_56

    .line 4119
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4120
    :cond_56
    const v38, 0x7f1006b2

    move/from16 v0, v38

    if-ne v12, v0, :cond_57

    .line 4121
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4122
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4124
    :cond_57
    const v38, 0x7f10063e

    move/from16 v0, v38

    if-ne v12, v0, :cond_58

    .line 4131
    const-string v38, "no_modify_accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4132
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4134
    :cond_58
    const v38, 0x7f10069f

    move/from16 v0, v38

    if-ne v12, v0, :cond_59

    .line 4135
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4136
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4140
    :cond_59
    const v38, 0x7f100697

    move/from16 v0, v38

    if-ne v12, v0, :cond_5a

    .line 4143
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4145
    :cond_5a
    const v38, 0x7f1006ed

    move/from16 v0, v38

    if-ne v12, v0, :cond_5b

    .line 4148
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4150
    :cond_5b
    const v38, 0x7f100662

    move/from16 v0, v38

    if-ne v12, v0, :cond_5c

    .line 4152
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4153
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4155
    :cond_5c
    const v38, 0x7f100646

    move/from16 v0, v38

    if-ne v12, v0, :cond_5d

    .line 4157
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4159
    :cond_5d
    const v38, 0x7f100679

    move/from16 v0, v38

    if-ne v12, v0, :cond_62

    .line 4161
    const/16 v19, 0x1

    .line 4162
    .local v19, "isMultipleUsersAllowed":Z
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v38

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v38

    if-nez v38, :cond_5e

    .line 4163
    const/16 v19, 0x0

    .line 4166
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "shopdemo"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 4167
    .restart local v33    # "shop":I
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v38

    if-eqz v38, :cond_5f

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v38

    if-nez v38, :cond_5f

    if-eqz v19, :cond_5f

    const/16 v38, 0x1

    move/from16 v0, v33

    move/from16 v1, v38

    if-ne v0, v1, :cond_60

    .line 4171
    :cond_5f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4172
    :cond_60
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_61

    .line 4174
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4176
    :cond_61
    const v38, 0x7f0a1c2f

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 4177
    const v38, 0x7f0a1c30

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4180
    .end local v19    # "isMultipleUsersAllowed":Z
    .end local v33    # "shop":I
    :cond_62
    const v38, 0x7f100641

    move/from16 v0, v38

    if-ne v12, v0, :cond_65

    .line 4181
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v38

    if-nez v38, :cond_63

    const-string v38, "no_modify_accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_64

    .line 4182
    :cond_63
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4185
    :cond_64
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.android.cloudagent"

    const/16 v40, 0x5

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 4186
    :catch_2
    move-exception v7

    .line 4187
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4190
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_65
    const v38, 0x7f1006b4

    move/from16 v0, v38

    if-ne v12, v0, :cond_68

    .line 4191
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v38

    const-string v39, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_66

    const-string v38, "SPR"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_66

    const-string v38, "BST"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_66

    .line 4193
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4203
    :cond_66
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_67

    const-string v38, "Settings"

    const-string v39, "Samsung non-FOTA devices"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    :cond_67
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 4205
    .local v14, "intent":Landroid/content/Intent;
    const-string v38, "android.intent.action.OMADM.SPRINTUPDATE"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4206
    const/high16 v38, 0x10200000

    move/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4207
    iput-object v14, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 4209
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_68
    const v38, 0x7f1006b5

    move/from16 v0, v38

    if-ne v12, v0, :cond_6a

    .line 4210
    const-string v38, "ro.csc.sales_code"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 4212
    .local v32, "salesCode":Ljava/lang/String;
    const-string v38, "VZW"

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_69

    .line 4213
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4216
    :cond_69
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.android.fotaclient"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 4217
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 4218
    :catch_3
    move-exception v7

    .line 4219
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v38, "Settings"

    const-string v39, "Verizon OMADM devices"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 4221
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v38, "android.intent.action.OMADM.UPDATE"

    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4222
    const/high16 v38, 0x10200000

    move/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4223
    iput-object v14, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_2

    .line 4226
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v32    # "salesCode":Ljava/lang/String;
    :cond_6a
    const v38, 0x7f1006b3

    move/from16 v0, v38

    if-ne v12, v0, :cond_6b

    .line 4227
    const/16 v22, 0x1

    .line 4229
    .local v22, "isSprintDsa":Z
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sprint.dsa"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4235
    :goto_6
    if-nez v22, :cond_7

    .line 4236
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4230
    :catch_4
    move-exception v7

    .line 4231
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x0

    goto :goto_6

    .line 4238
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v22    # "isSprintDsa":Z
    :cond_6b
    const v38, 0x7f1006e9

    move/from16 v0, v38

    if-ne v12, v0, :cond_6c

    .line 4240
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4242
    :cond_6c
    const v38, 0x7f10068b

    move/from16 v0, v38

    if-ne v12, v0, :cond_6d

    .line 4244
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4246
    :cond_6d
    const v38, 0x7f100669

    move/from16 v0, v38

    if-ne v12, v0, :cond_74

    .line 4250
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "android.hardware.nfc"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_6e

    .line 4252
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4254
    :cond_6e
    const/16 v29, 0x0

    .line 4256
    .local v29, "nfcsummary":Ljava/lang/CharSequence;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.android.settings.nfcsummary"

    invoke-virtual/range {v38 .. v39}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v29

    .line 4257
    if-eqz v29, :cond_6f

    .line 4258
    move-object/from16 v0, v29

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 4259
    const/16 v38, 0x0

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4264
    :cond_6f
    :goto_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4265
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v28

    .line 4266
    .local v28, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v28 .. v28}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v38

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_70

    invoke-virtual/range {v28 .. v28}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_71

    .line 4267
    :cond_70
    const v38, 0x7f0a0367

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4261
    .end local v28    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_5
    move-exception v7

    .line 4262
    .local v7, "e":Ljava/lang/NullPointerException;
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_6f

    const-string v38, "CSCAppRes"

    const-string v39, "No data for CSCAppResourceUri"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4268
    .end local v7    # "e":Ljava/lang/NullPointerException;
    .restart local v28    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_71
    invoke-virtual/range {v28 .. v28}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v38

    const/16 v39, 0x5

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_72

    .line 4269
    const v38, 0x7f0a0365

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4270
    :cond_72
    invoke-virtual/range {v28 .. v28}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_73

    invoke-virtual/range {v28 .. v28}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v38

    const/16 v39, 0x4

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 4271
    :cond_73
    const v38, 0x7f0a0366

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4283
    .end local v28    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    .end local v29    # "nfcsummary":Ljava/lang/CharSequence;
    :cond_74
    const v38, 0x7f10066a

    move/from16 v0, v38

    if-ne v12, v0, :cond_77

    .line 4286
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v38

    if-nez v38, :cond_75

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v38

    if-nez v38, :cond_76

    .line 4287
    :cond_75
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4289
    :cond_76
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4290
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4293
    :cond_77
    const v38, 0x7f10066d

    move/from16 v0, v38

    if-ne v12, v0, :cond_78

    .line 4296
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4298
    :cond_78
    const v38, 0x7f10066e

    move/from16 v0, v38

    if-eq v12, v0, :cond_7

    .line 4304
    const v38, 0x7f10066f

    move/from16 v0, v38

    if-ne v12, v0, :cond_7a

    .line 4305
    const/16 v23, 0x1

    .line 4307
    .local v23, "isSupportMirrorLink":Z
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.samsung.android.app.mirrorlink"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4311
    if-nez v23, :cond_7

    .line 4313
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4308
    :catch_6
    move-exception v7

    .line 4309
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x0

    .line 4311
    if-nez v23, :cond_7

    .line 4313
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4311
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v38

    if-eqz v23, :cond_79

    .line 4313
    :goto_8
    throw v38

    :cond_79
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 4316
    .end local v23    # "isSupportMirrorLink":Z
    :cond_7a
    const v38, 0x7f100670

    move/from16 v0, v38

    if-ne v12, v0, :cond_7b

    .line 4318
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.android.app.kieswifi"

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    .line 4319
    :catch_7
    move-exception v7

    .line 4320
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4323
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7b
    const v38, 0x7f100645

    move/from16 v0, v38

    if-ne v12, v0, :cond_7e

    .line 4324
    const-string v38, "DCM"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isDocomoSettingsDisabled()Z

    move-result v38

    if-eqz v38, :cond_7d

    .line 4325
    :cond_7c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4329
    :cond_7d
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.nttdocomo.android.docomoset"

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    .line 4330
    :catch_8
    move-exception v7

    .line 4331
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4334
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7e
    const v38, 0x7f10066c

    move/from16 v0, v38

    if-ne v12, v0, :cond_7f

    .line 4335
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-nez v38, :cond_7

    .line 4336
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4338
    :cond_7f
    const v38, 0x7f100667

    move/from16 v0, v38

    if-ne v12, v0, :cond_82

    .line 4340
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-nez v38, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-nez v38, :cond_80

    const-string v38, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4341
    :cond_80
    const-string v38, "ro.product.name"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4342
    .restart local v6    # "device":Ljava/lang/String;
    if-eqz v6, :cond_81

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    const-string v39, "wilcoxlte"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_81

    const/16 v38, 0x1

    :goto_9
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 4343
    .local v16, "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    if-nez v38, :cond_7

    .line 4344
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4342
    .end local v16    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_81
    const/16 v38, 0x0

    goto :goto_9

    .line 4347
    .end local v6    # "device":Ljava/lang/String;
    :cond_82
    const v38, 0x7f10067a

    move/from16 v0, v38

    if-ne v12, v0, :cond_83

    .line 4360
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4362
    :cond_83
    const v38, 0x7f100682

    move/from16 v0, v38

    if-ne v12, v0, :cond_85

    .line 4364
    if-eqz v34, :cond_84

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isOrangeCustomer()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4365
    :cond_84
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4367
    :cond_85
    const v38, 0x7f10063f

    move/from16 v0, v38

    if-ne v12, v0, :cond_86

    .line 4368
    const-string v38, "no_modify_accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    if-nez v17, :cond_7

    .line 4369
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4371
    :cond_86
    const v38, 0x7f1006ef

    move/from16 v0, v38

    if-ne v12, v0, :cond_88

    .line 4373
    if-eqz v34, :cond_87

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isOrangeCustomer()Z

    move-result v38

    if-nez v38, :cond_7

    .line 4374
    :cond_87
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4376
    :cond_88
    const v38, 0x7f10068e

    move/from16 v0, v38

    if-ne v12, v0, :cond_89

    .line 4377
    const-string v38, "ro.multisim.simslotcount"

    const/16 v39, 0x1

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 4381
    .local v35, "simSlotCount":I
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4392
    .end local v35    # "simSlotCount":I
    :cond_89
    const v38, 0x7f1006eb

    move/from16 v0, v38

    if-ne v12, v0, :cond_8a

    .line 4394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v38, v0

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 4395
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4399
    :cond_8a
    const v38, 0x7f10065b

    move/from16 v0, v38

    if-ne v12, v0, :cond_8d

    .line 4400
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-nez v38, :cond_8b

    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8c

    :cond_8b
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4402
    :cond_8c
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4406
    :cond_8d
    const v38, 0x7f10065c

    move/from16 v0, v38

    if-ne v12, v0, :cond_8e

    .line 4407
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4409
    :cond_8e
    const v38, 0x7f1006ae

    move/from16 v0, v38

    if-ne v12, v0, :cond_90

    .line 4410
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_8f

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4411
    :cond_8f
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4414
    :cond_90
    const v38, 0x7f1006b7

    move/from16 v0, v38

    if-ne v12, v0, :cond_92

    .line 4415
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v38

    if-eqz v38, :cond_91

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-nez v38, :cond_7

    .line 4416
    :cond_91
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4419
    :cond_92
    const v38, 0x7f10065d

    move/from16 v0, v38

    if-ne v12, v0, :cond_94

    .line 4420
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v38

    if-eqz v38, :cond_93

    const-string v38, "XJP"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_93

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4421
    :cond_93
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4424
    :cond_94
    const v38, 0x7f10065a

    move/from16 v0, v38

    if-ne v12, v0, :cond_99

    .line 4425
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-nez v38, :cond_95

    .line 4426
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4428
    :cond_95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_98

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-nez v38, :cond_98

    const/16 v21, 0x1

    .line 4430
    .local v21, "isSecondaryUser":Z
    :goto_a
    const-string v38, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 4432
    .local v5, "cm":Landroid/net/ConnectivityManager;
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_96

    .line 4435
    :cond_96
    if-nez v21, :cond_97

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v38

    if-eqz v38, :cond_97

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_97

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    const-string v38, "ATT"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4436
    :cond_97
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4428
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v21    # "isSecondaryUser":Z
    :cond_98
    const/16 v21, 0x0

    goto :goto_a

    .line 4441
    :cond_99
    const v38, 0x7f100646

    move/from16 v0, v38

    if-ne v12, v0, :cond_9a

    .line 4444
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4446
    :cond_9a
    const v38, 0x7f1006e3

    move/from16 v0, v38

    if-ne v12, v0, :cond_9b

    .line 4448
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->hasDCMhome(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4449
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4451
    :cond_9b
    const v38, 0x7f100685

    move/from16 v0, v38

    if-ne v12, v0, :cond_9c

    .line 4452
    const-string v38, "DCM"

    const-string v39, "ro.csc.sales_code"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4453
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4455
    :cond_9c
    const v38, 0x7f100678

    move/from16 v0, v38

    if-eq v12, v0, :cond_7

    .line 4457
    const v38, 0x7f1006e0

    move/from16 v0, v38

    if-ne v12, v0, :cond_9f

    .line 4458
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v38

    const-string v39, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4459
    .local v15, "isChinaNal":Ljava/lang/String;
    if-eqz v15, :cond_9d

    const-string v38, "ChinaNalSecurity"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_9e

    .line 4460
    :cond_9d
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4463
    :cond_9e
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.android.app.capabilitymanager"

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_2

    .line 4464
    :catch_9
    move-exception v7

    .line 4465
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4468
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "isChinaNal":Ljava/lang/String;
    :cond_9f
    const v38, 0x7f1006e6

    move/from16 v0, v38

    if-ne v12, v0, :cond_a0

    .line 4469
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4470
    :cond_a0
    const v38, 0x7f10066b

    move/from16 v0, v38

    if-ne v12, v0, :cond_a2

    .line 4471
    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4472
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_a1

    const-string v38, "Settings"

    const-string v39, "Restrict mode - remove Nearby devices"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    :cond_a1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4475
    :cond_a2
    const v38, 0x7f100667

    move/from16 v0, v38

    if-ne v12, v0, :cond_a5

    .line 4476
    const-string v38, "ro.product.name"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4477
    .restart local v6    # "device":Ljava/lang/String;
    if-eqz v6, :cond_a3

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    const-string v39, "wilcoxlte"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_a3

    const/16 v38, 0x1

    :goto_b
    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 4479
    .restart local v16    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_a4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-nez v38, :cond_a4

    const/16 v20, 0x1

    .line 4480
    .restart local v20    # "isOthersUser":Z
    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-eqz v38, :cond_7

    if-eqz v20, :cond_7

    .line 4481
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    if-nez v38, :cond_7

    .line 4482
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4477
    .end local v16    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    .end local v20    # "isOthersUser":Z
    :cond_a3
    const/16 v38, 0x0

    goto :goto_b

    .line 4479
    .restart local v16    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_a4
    const/16 v20, 0x0

    goto :goto_c

    .line 4485
    .end local v6    # "device":Ljava/lang/String;
    .end local v16    # "isDeviceWilcoxlte":Ljava/lang/Boolean;
    :cond_a5
    const v38, 0x7f1006e1

    move/from16 v0, v38

    if-ne v12, v0, :cond_a6

    .line 4486
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4487
    :cond_a6
    const v38, 0x7f100692

    move/from16 v0, v38

    if-ne v12, v0, :cond_a7

    .line 4490
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4492
    :cond_a7
    const v38, 0x7f1006ee

    move/from16 v0, v38

    if-ne v12, v0, :cond_a8

    .line 4493
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4494
    :cond_a8
    const v38, 0x7f10068c

    move/from16 v0, v38

    if-ne v12, v0, :cond_a9

    .line 4496
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4497
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4499
    :cond_a9
    const v38, 0x7f1006a8

    move/from16 v0, v38

    if-ne v12, v0, :cond_aa

    .line 4500
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "shopdemo"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 4502
    .restart local v33    # "shop":I
    const/16 v38, 0x1

    move/from16 v0, v33

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 4503
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4505
    .end local v33    # "shop":I
    :cond_aa
    const v38, 0x7f10068d

    move/from16 v0, v38

    if-ne v12, v0, :cond_ae

    .line 4506
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_ab

    .line 4507
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4509
    :cond_ab
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_ac

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_ad

    .line 4510
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0a0d9d

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 4511
    const/16 v38, 0x0

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4514
    :cond_ad
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0a0d9c

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 4515
    const/16 v38, 0x0

    move/from16 v0, v38

    iput v0, v10, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto/16 :goto_2

    .line 4517
    :cond_ae
    const v38, 0x7f10064a

    move/from16 v0, v38

    if-ne v12, v0, :cond_b1

    .line 4518
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-eqz v38, :cond_b0

    const/16 v20, 0x1

    .line 4519
    .restart local v20    # "isOthersUser":Z
    :goto_d
    const-string v38, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_af

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_af

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_af

    if-eqz v20, :cond_7

    .line 4521
    :cond_af
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4518
    .end local v20    # "isOthersUser":Z
    :cond_b0
    const/16 v20, 0x0

    goto :goto_d

    .line 4523
    :cond_b1
    const v38, 0x7f100691

    move/from16 v0, v38

    if-ne v12, v0, :cond_b2

    .line 4528
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.android.app.safetyassurance"

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_2

    .line 4529
    :catch_a
    move-exception v7

    .line 4530
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4533
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b2
    const v38, 0x7f1006b1

    move/from16 v0, v38

    if-ne v12, v0, :cond_b3

    .line 4535
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4537
    :cond_b3
    const v38, 0x7f1006e7

    move/from16 v0, v38

    if-ne v12, v0, :cond_b4

    .line 4538
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4539
    :cond_b4
    const v38, 0x7f10069e

    move/from16 v0, v38

    if-ne v12, v0, :cond_b6

    .line 4540
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/SettingsActivity;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v38

    if-eqz v38, :cond_b5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->isVoiceControlEnabled()Z

    move-result v38

    if-eqz v38, :cond_b5

    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v38

    if-nez v38, :cond_b5

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4541
    :cond_b5
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4543
    :cond_b6
    const v38, 0x7f1006ea

    move/from16 v0, v38

    if-ne v12, v0, :cond_b7

    .line 4544
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4545
    :cond_b7
    const v38, 0x7f100643

    move/from16 v0, v38

    if-ne v12, v0, :cond_b8

    .line 4546
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4547
    :cond_b8
    const v38, 0x7f10066b

    move/from16 v0, v38

    if-ne v12, v0, :cond_b9

    .line 4550
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4552
    :cond_b9
    const v38, 0x7f100698

    move/from16 v0, v38

    if-ne v12, v0, :cond_bb

    .line 4553
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "shopdemo"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 4554
    .restart local v33    # "shop":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_ba

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_ba

    const/16 v38, 0x1

    move/from16 v0, v33

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 4555
    :cond_ba
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4557
    .end local v33    # "shop":I
    :cond_bb
    const v38, 0x7f100695

    move/from16 v0, v38

    if-ne v12, v0, :cond_bd

    .line 4559
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.skyfire.browser.toolbar.att"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v30

    .line 4561
    .local v30, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v38

    const-string v39, "CscFeature_Setting_EnableBrowserBar"

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_bc

    if-eqz v30, :cond_bc

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v38, v0

    if-nez v38, :cond_7

    .line 4562
    :cond_bc
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_b

    goto/16 :goto_2

    .line 4564
    .end local v30    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_b
    move-exception v7

    .line 4565
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4566
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_7

    const-string v38, "Settings"

    const-string v39, "Browser Bar is not found"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4569
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_bd
    const v38, 0x7f1006af

    move/from16 v0, v38

    if-ne v12, v0, :cond_be

    .line 4573
    const-string v38, "no_modify_accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4574
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4576
    :cond_be
    const v38, 0x7f100640

    move/from16 v0, v38

    if-ne v12, v0, :cond_bf

    .line 4577
    const-string v38, "no_modify_accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4578
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4580
    :cond_bf
    const v38, 0x7f100687

    move/from16 v0, v38

    if-ne v12, v0, :cond_c0

    .line 4581
    const-string v38, "CTC"

    const-string v39, "ro.csc.sales_code"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4582
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4584
    :cond_c0
    const v38, 0x7f100660

    move/from16 v0, v38

    if-ne v12, v0, :cond_c1

    .line 4585
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v38

    if-eqz v38, :cond_7

    .line 4586
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v38

    if-nez v38, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v38

    if-nez v38, :cond_7

    .line 4587
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4589
    :cond_c1
    const v38, 0x7f10065b

    move/from16 v0, v38

    if-ne v12, v0, :cond_c2

    .line 4590
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4591
    const/16 v38, 0x0

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 4592
    :cond_c2
    const v38, 0x7f1006b7

    move/from16 v0, v38

    if-ne v12, v0, :cond_c3

    .line 4593
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4594
    const/16 v38, 0x0

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 4595
    :cond_c3
    const v38, 0x7f1006a9

    move/from16 v0, v38

    if-ne v12, v0, :cond_c5

    .line 4597
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v38

    const-string v39, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v40, "none"

    invoke-virtual/range {v38 .. v40}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "theme"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_c4

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "easy_mode_switch"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_7

    .line 4600
    :cond_c4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4602
    :cond_c5
    const v38, 0x7f1006aa

    move/from16 v0, v38

    if-ne v12, v0, :cond_c6

    .line 4604
    const-string v38, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT"

    invoke-static/range {v38 .. v38}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4605
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4607
    :cond_c6
    const v38, 0x7f10067d

    move/from16 v0, v38

    if-ne v12, v0, :cond_c7

    .line 4608
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4609
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4610
    :cond_c7
    const v38, 0x7f1006a4

    move/from16 v0, v38

    if-ne v12, v0, :cond_c8

    .line 4613
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4614
    :cond_c8
    const v38, 0x7f1006f2

    move/from16 v0, v38

    if-ne v12, v0, :cond_c9

    .line 4615
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4616
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4617
    :cond_c9
    const v38, 0x7f10064b

    move/from16 v0, v38

    if-ne v12, v0, :cond_cc

    .line 4618
    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_ca

    .line 4619
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    const-string v39, ":android:show_fragment"

    const-string v40, "com.android.contacts.preference.DisplayOptionsPreferenceFragment"

    invoke-virtual/range {v38 .. v40}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4621
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    const-string v39, ":android:no_headers"

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4623
    :cond_ca
    const-string v38, "DCM"

    const-string v39, "ro.csc.sales_code"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_cb

    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4624
    :cond_cb
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4626
    :cond_cc
    const v38, 0x7f10064c

    move/from16 v0, v38

    if-ne v12, v0, :cond_cd

    .line 4627
    const-string v38, "DCM"

    const-string v39, "ro.csc.sales_code"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4628
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4630
    :cond_cd
    const v38, 0x7f10064d

    move/from16 v0, v38

    if-ne v12, v0, :cond_ce

    .line 4631
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4632
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4634
    :cond_ce
    const v38, 0x7f10064e

    move/from16 v0, v38

    if-ne v12, v0, :cond_cf

    .line 4635
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4636
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4638
    :cond_cf
    const v38, 0x7f10064f

    move/from16 v0, v38

    if-ne v12, v0, :cond_d0

    .line 4639
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4640
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4642
    :cond_d0
    const v38, 0x7f100650

    move/from16 v0, v38

    if-ne v12, v0, :cond_d2

    .line 4643
    const-string v38, "KDI"

    const-string v39, "ro.csc.sales_code"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d1

    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d1

    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v39, "com.android.mms"

    invoke-static/range {v38 .. v39}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4644
    :cond_d1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4646
    :cond_d2
    const v38, 0x7f100651

    move/from16 v0, v38

    if-ne v12, v0, :cond_d6

    .line 4647
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v38

    if-nez v38, :cond_d3

    const-string v38, "XAR"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d3

    const-string v38, "XAC"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_d4

    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "easy_mode_switch"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_d5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "easy_mode_splanner"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_d5

    .line 4651
    :cond_d4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4652
    :cond_d5
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4653
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4655
    :cond_d6
    const v38, 0x7f100652

    move/from16 v0, v38

    if-ne v12, v0, :cond_d8

    .line 4656
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v38

    if-nez v38, :cond_d7

    const-string v38, "XAR"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d7

    const-string v38, "XAC"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_d7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "easy_mode_switch"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string v39, "easy_mode_splanner"

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    if-nez v38, :cond_7

    .line 4658
    :cond_d7
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4660
    :cond_d8
    const v38, 0x7f100649

    move/from16 v0, v38

    if-ne v12, v0, :cond_d9

    .line 4662
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v38

    const-string v39, "com.sec.orca.easysignup"

    const/16 v40, 0x80

    invoke-virtual/range {v38 .. v40}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_2

    .line 4663
    :catch_c
    move-exception v7

    .line 4664
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4666
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d9
    const v38, 0x7f100653

    move/from16 v0, v38

    if-ne v12, v0, :cond_df

    .line 4667
    const-string v9, "com.vlingo.midas.gui.ConversationActivity"

    .line 4668
    .local v9, "fragment":Ljava/lang/String;
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_da

    .line 4669
    invoke-static {}, Lcom/android/settings/Utils;->hasKLook()Z

    move-result v38

    if-eqz v38, :cond_de

    .line 4670
    const-string v9, "com.vlingo.midas.settings.twopane.SettingsScreenTwoPane"

    .line 4676
    :cond_da
    :goto_e
    sget-boolean v38, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v38, :cond_db

    const-string v38, "Settings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "fragment of svoice : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    :cond_db
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    if-eqz v38, :cond_dc

    .line 4678
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    const-string v39, "com.vlingo.midas"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4680
    :cond_dc
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v38

    const-string v39, "SEC_FLOATING_FEATURE_SVOICE_CONFIG_FOR_GEAR"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_dd

    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4682
    :cond_dd
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4673
    :cond_de
    const-string v9, "com.vlingo.midas.settings.SettingsScreen"

    goto :goto_e

    .line 4684
    .end local v9    # "fragment":Ljava/lang/String;
    :cond_df
    const v38, 0x7f1006d1

    move/from16 v0, v38

    if-ne v12, v0, :cond_e0

    .line 4688
    const-string v38, "com.android.settings.powersavingmode.MenuPowerSavingModeSettings"

    move-object/from16 v0, v38

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto/16 :goto_2

    .line 4690
    :cond_e0
    const v38, 0x7f100654

    move/from16 v0, v38

    if-ne v12, v0, :cond_e1

    .line 4691
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4692
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4694
    :cond_e1
    const v38, 0x7f100647

    move/from16 v0, v38

    if-ne v12, v0, :cond_e2

    .line 4695
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    goto/16 :goto_2

    .line 4698
    :cond_e2
    const v38, 0x7f100648

    move/from16 v0, v38

    if-ne v12, v0, :cond_e3

    .line 4699
    const-string v38, "VZW"

    sget-object v39, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    goto/16 :goto_2

    .line 4702
    :cond_e3
    const v38, 0x7f1006b6

    move/from16 v0, v38

    if-ne v12, v0, :cond_e4

    .line 4703
    sget-object v38, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 4704
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4708
    :cond_e4
    const v38, 0x7f1006c7

    move/from16 v0, v38

    if-ne v12, v0, :cond_7

    .line 4709
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v38

    const-string v39, "CscFeature_Common_EnableAirMessage"

    invoke-virtual/range {v38 .. v39}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    .line 4710
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 4719
    :cond_e5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_e6

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    if-ne v0, v10, :cond_e6

    if-eqz v17, :cond_e6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-nez v38, :cond_e6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v38

    if-nez v38, :cond_e6

    .line 4722
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4723
    :cond_e6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_e7

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    if-ne v0, v10, :cond_e7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    move/from16 v38, v0

    if-eqz v38, :cond_e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_KNOX:[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v38

    if-nez v38, :cond_e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsActivity;->EXTRA_SETTINGS_FOR_KIOSKCONTAINER:[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v0, v12}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v38

    if-nez v38, :cond_e7

    .line 4726
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4727
    :cond_e7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v11, v0, :cond_8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    if-ne v0, v10, :cond_8

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v38

    if-nez v38, :cond_8

    .line 4729
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 4775
    .end local v10    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v12    # "id":I
    .end local v17    # "isKnoxUser":Z
    .end local v31    # "removed":Z
    :cond_e8
    return-void
.end method

.method private updateHomeSettingTiles(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2293
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2294
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2325
    :goto_0
    return v2

    .line 2299
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 2300
    iget v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 2305
    sget-boolean v4, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 2306
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 2307
    invoke-static {p0}, Lcom/android/settings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 2309
    goto :goto_0

    .line 2314
    :cond_2
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 2315
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 2317
    :cond_3
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2319
    :catch_0
    move-exception v0

    .line 2321
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2189
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v16, "show"

    sget-object v17, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v18, "eng"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 2193
    .local v11, "showDev":Z
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 2195
    .local v14, "um":Landroid/os/UserManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 2196
    .local v12, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_14

    .line 2198
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardCategory;

    .line 2201
    .local v3, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-wide v0, v3, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 2202
    .local v7, "id":I
    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    add-int/lit8 v8, v15, -0x1

    .line 2203
    .local v8, "n":I
    :goto_1
    if-ltz v8, :cond_13

    .line 2205
    invoke-virtual {v3, v8}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v13

    .line 2206
    .local v13, "tile":Lcom/android/settings/dashboard/DashboardTile;
    const/4 v10, 0x0

    .line 2207
    .local v10, "removeTile":Z
    iget-wide v0, v13, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v7, v0

    .line 2208
    const v15, 0x7f100673

    if-eq v7, v15, :cond_0

    const v15, 0x7f10067b

    if-ne v7, v15, :cond_4

    .line 2209
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2210
    const/4 v10, 0x1

    .line 2278
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v15, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    if-nez v15, :cond_2

    .line 2280
    const/4 v10, 0x1

    .line 2283
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 2284
    invoke-virtual {v3, v8}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 2286
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 2287
    goto :goto_1

    .line 2212
    :cond_4
    const v15, 0x7f100657

    if-ne v7, v15, :cond_5

    .line 2214
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2215
    const/4 v10, 0x1

    goto :goto_2

    .line 2217
    :cond_5
    const v15, 0x7f100659

    if-ne v7, v15, :cond_6

    .line 2219
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.bluetooth"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2220
    const/4 v10, 0x1

    goto :goto_2

    .line 2222
    :cond_6
    const v15, 0x7f10065f

    if-ne v7, v15, :cond_7

    .line 2224
    const-string v15, "network_management"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    .line 2227
    .local v9, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v9}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_1

    .line 2228
    const/4 v10, 0x1

    goto :goto_2

    .line 2233
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    :cond_7
    const v15, 0x7f100678

    if-ne v7, v15, :cond_8

    .line 2236
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    if-nez v15, :cond_1

    .line 2237
    const/4 v10, 0x1

    goto :goto_2

    .line 2239
    :cond_8
    const v15, 0x7f100646

    if-ne v7, v15, :cond_9

    .line 2240
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/SettingsActivity;->updateHomeSettingTiles(Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2241
    const/4 v10, 0x1

    goto :goto_2

    .line 2243
    :cond_9
    const v15, 0x7f100679

    if-ne v7, v15, :cond_d

    .line 2244
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUserCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    const/4 v4, 0x1

    .line 2247
    .local v4, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-nez v15, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2251
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2244
    .end local v4    # "hasMultipleUsers":Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_3

    .line 2253
    :cond_d
    const v15, 0x7f10067a

    if-ne v7, v15, :cond_10

    .line 2254
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.nfc"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 2255
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2258
    :cond_e
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 2259
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.nfc.hce"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 2262
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2265
    .end local v2    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_10
    const v15, 0x7f10066c

    if-ne v7, v15, :cond_11

    .line 2266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.software.print"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 2268
    .local v5, "hasPrintingSupport":Z
    if-nez v5, :cond_1

    .line 2269
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2271
    .end local v5    # "hasPrintingSupport":Z
    :cond_11
    const v15, 0x7f100682

    if-ne v7, v15, :cond_1

    .line 2272
    if-eqz v11, :cond_12

    const-string v15, "no_debugging_features"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2274
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2196
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2230
    .restart local v9    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v10    # "removeTile":Z
    .restart local v13    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catch_0
    move-exception v15

    goto/16 :goto_2

    .line 2289
    .end local v3    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "id":I
    .end local v8    # "n":I
    .end local v9    # "netManager":Landroid/os/INetworkManagementService;
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_14
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1976
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1977
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 1978
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 1768
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1769
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 1772
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1773
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1774
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1776
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1777
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 1781
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1782
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1785
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 1779
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

    .line 1785
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public highlightHeader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 3451
    if-eqz p1, :cond_0

    .line 3452
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3453
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3454
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 3455
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3456
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3460
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public highlightHeaderWithoutScroll(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 3464
    if-eqz p1, :cond_0

    .line 3465
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3466
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 3467
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 3470
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1761
    sget-object v1, Lcom/android/settings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1763
    :goto_1
    return v1

    .line 1760
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 2452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 2453
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 6342
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 6345
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->invalidateHeaders()V

    .line 6346
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x160f

    const/16 v4, 0x1610

    const/4 v3, 0x0

    .line 1876
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1877
    if-nez p1, :cond_2

    .line 1878
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1879
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 1880
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1881
    check-cast v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1883
    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 1888
    :cond_2
    if-ne p1, v2, :cond_4

    .line 1889
    if-ne p2, v4, :cond_0

    .line 1890
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Settings"

    const-string v2, "Search direct back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setResult(I)V

    .line 1892
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    .line 1893
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1894
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 1900
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1901
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 1902
    const-string v1, "Settings"

    const-string v2, "SBeam help back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 1910
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1911
    if-ne p1, v2, :cond_0

    .line 1912
    if-ne p2, v4, :cond_0

    .line 1913
    const-string v1, "Settings"

    const-string v2, "Search direct back!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setResult(I)V

    .line 1915
    sput-boolean v3, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    .line 1916
    iput-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1917
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1930
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1931
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    if-eqz v0, :cond_0

    .line 1932
    const/16 v0, 0x1610

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->setResult(I)V

    .line 1936
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1937
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1609
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
    const v8, 0x7f070036

    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3587
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3760
    :cond_0
    :goto_0
    return-void

    .line 3590
    :cond_1
    sget v7, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_2

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-nez v7, :cond_3

    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    if-eqz v7, :cond_11

    .line 3592
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v6

    .line 3594
    .local v6, "tabIndex":I
    if-gez v6, :cond_4

    .line 3595
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getSelectedTabFromFragmentClass()I

    move-result v6

    .line 3598
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 3630
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 3658
    .end local v6    # "tabIndex":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3659
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity;->updateHeaderList(Ljava/util/List;)V

    .line 3662
    :cond_5
    sget v7, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    if-ne v7, v13, :cond_7

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3663
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3664
    .local v4, "index":Ljava/lang/Integer;
    if-nez v4, :cond_13

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_13

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-eq v7, v8, :cond_13

    .line 3666
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 3667
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/SettingsActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3672
    :goto_2
    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    if-lez v7, :cond_7

    .line 3673
    iput v12, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    .line 3681
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    if-eqz v7, :cond_0

    .line 3682
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_a

    .line 3683
    sget-wide v8, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity$Header;

    iget-wide v8, v7, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v10, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1e

    .line 3684
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 3685
    .local v2, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 3686
    :cond_8
    sget-wide v8, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f10064a

    cmp-long v7, v8, v10

    if-nez v7, :cond_16

    .line 3687
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3688
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3690
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_14

    .line 3691
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3697
    :cond_9
    :goto_5
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 3698
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3699
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "args_from_search"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3700
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3701
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3702
    const-string v7, "extra_depth_counter_key"

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3703
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3704
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3712
    :goto_6
    iput-boolean v12, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 3757
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_a
    :goto_7
    iput-boolean v12, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    goto/16 :goto_0

    .line 3600
    .end local v3    # "i":I
    .restart local v6    # "tabIndex":I
    :pswitch_0
    invoke-virtual {p0, v8, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3603
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3604
    const v7, 0x7f07003d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3605
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3606
    const v7, 0x7f070046

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3608
    :cond_c
    const v7, 0x7f07003c

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3612
    :pswitch_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 3613
    const v7, 0x7f07005e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3614
    :cond_d
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3615
    const v7, 0x7f070063

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3617
    :cond_e
    const v7, 0x7f07000e

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3621
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3622
    const v7, 0x7f070020

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3623
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3624
    const v7, 0x7f07005d

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3626
    :cond_10
    const v7, 0x7f070073

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3650
    .end local v6    # "tabIndex":I
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "VZW"

    sget-object v8, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 3651
    const v7, 0x7f07005f

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3653
    :cond_12
    const v7, 0x7f0700c8

    invoke-virtual {p0, v7, p1}, Lcom/android/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto/16 :goto_1

    .line 3668
    .restart local v4    # "index":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 3670
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_2

    .line 3674
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_13
    if-nez v4, :cond_7

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/settings/SettingsActivity;->mPrevSelectedActionBarIndex:I

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 3675
    iget v7, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    if-lez v7, :cond_7

    .line 3676
    iput v12, p0, Lcom/android/settings/SettingsActivity;->mTopLevelHeaderId:I

    goto/16 :goto_3

    .line 3693
    .end local v4    # "index":Ljava/lang/Integer;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "i":I
    :cond_14
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_9

    .line 3694
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 3706
    :cond_15
    const-string v7, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/SettingsActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 3707
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.phone"

    const-string v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3708
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3709
    const-string v7, "extra_depth_counter_key"

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3710
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 3713
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_16
    sget-wide v8, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    const-wide/32 v10, 0x7f100691

    cmp-long v7, v8, v10

    if-nez v7, :cond_19

    .line 3714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3715
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v7, "extra_from_search"

    invoke-virtual {v0, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3717
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_18

    .line 3718
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3724
    :cond_17
    :goto_8
    const-string v7, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {p0, v7, v0, v12, v12}, Lcom/android/settings/SettingsActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v5

    .line 3725
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.app.safetyassurance"

    const-string v8, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3726
    const-string v7, "extra_from_search"

    invoke-virtual {v5, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3727
    const-string v7, "extra_depth_counter_key"

    iget v8, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3728
    sget-object v7, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    .line 3720
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_18
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_17

    .line 3721
    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_8

    .line 3730
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_19
    sget v7, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1a

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-nez v7, :cond_1a

    .line 3731
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3732
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3733
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_7

    .line 3735
    :cond_1a
    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065c

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1b

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006dd

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1b

    iget-wide v8, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10065d

    cmp-long v7, v8, v10

    if-nez v7, :cond_1c

    .line 3741
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 3742
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 3743
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_7

    .line 3745
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 3746
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SettingsActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 3751
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 3752
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SettingsActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto/16 :goto_7

    .line 3682
    .end local v2    # "header":Landroid/preference/PreferenceActivity$Header;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 3598
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

    .line 3494
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 3497
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3579
    :goto_0
    return-object v1

    .line 3502
    :cond_0
    const-class v5, Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-class v5, Lcom/android/settings/DreamSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Lcom/android/settings/mirrorlink/MirrorLinkAppDetail;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-class v5, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3523
    :cond_2
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3529
    :cond_3
    const-class v5, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3530
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3531
    .local v4, "temp":Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 3532
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3538
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_4
    const-class v5, Lcom/android/settings/nfc/TagsConnectingDevices;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3539
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3540
    .restart local v4    # "temp":Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 3541
    const-string v5, "fromHelp"

    const-string v6, "fromHelp_Sbeam"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3546
    .end local v4    # "temp":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3548
    const-class v5, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-class v5, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-class v5, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-class v5, Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3550
    :cond_6
    const-string v5, "settings:ui_options"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3554
    :cond_7
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3556
    const-class v5, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3557
    .local v3, "isWifiSettingsFragment":Z
    const-class v5, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3559
    .local v2, "isBtSettingsFragment":Z
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    .line 3560
    :cond_8
    const-string v5, "settings:guide_is_on"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3563
    :cond_9
    const/4 v0, 0x0

    .line 3565
    .local v0, "guideExtra":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 3566
    const-string v0, "wifi"

    .line 3574
    :cond_a
    :goto_1
    const-string v5, "settings:guide_mode"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3578
    .end local v0    # "guideExtra":Ljava/lang/String;
    .end local v2    # "isBtSettingsFragment":Z
    .end local v3    # "isWifiSettingsFragment":Z
    :cond_b
    const-class v5, Lcom/android/settings/SubSettings;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 3568
    .restart local v0    # "guideExtra":Ljava/lang/String;
    .restart local v2    # "isBtSettingsFragment":Z
    .restart local v3    # "isWifiSettingsFragment":Z
    :cond_c
    if-nez v2, :cond_d

    const-class v5, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3570
    :cond_d
    const-string v0, "bt"

    goto :goto_1
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 2414
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f10002d

    .line 1241
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1243
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1244
    sget v3, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    if-ne v3, v5, :cond_0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    if-eqz v3, :cond_5

    .line 1246
    :cond_1
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1247
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v3, -0x3

    .line 1249
    .local v2, "mTextSize":I
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1250
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1251
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1252
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1253
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mApplicationsTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1266
    :goto_0
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_2

    .line 1267
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setEmbeddedTabs()V

    .line 1270
    :cond_2
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    if-eqz v3, :cond_5

    .line 1271
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1272
    .local v0, "bar":Landroid/app/ActionBar;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_8

    .line 1273
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1281
    .end local v0    # "bar":Landroid/app/ActionBar;
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "mTextSize":I
    :cond_5
    :goto_1
    return-void

    .line 1254
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "mTextSize":I
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1255
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1256
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDisplayTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1257
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mInputTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1258
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mGeneralTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 1260
    :cond_7
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mConnectionTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1261
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mDeviceTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1262
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAccountTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 1263
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mMoreTabView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 1275
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1371
    sput-object p0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    .line 1373
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1375
    new-instance v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/widget/SwitchBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1376
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/SettingsActivity;->onCreateTablet(Landroid/os/Bundle;)V

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1382
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 1384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 1385
    .local v20, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 1389
    :cond_2
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 1393
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1395
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v20 .. v20}, Lcom/android/settings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    .line 1398
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1399
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 1401
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/android/settings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 1406
    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_4
    const/16 v21, 0x1

    .line 1411
    .local v21, "isSubSettings":Z
    :goto_2
    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    .line 1414
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getThemeResId()I

    move-result v24

    .line 1415
    .local v24, "themeResId":I
    const v2, 0x7f0b00b7

    move/from16 v0, v24

    if-eq v0, v2, :cond_6

    const v2, 0x7f0b00b9

    move/from16 v0, v24

    if-eq v0, v2, :cond_6

    .line 1417
    const v2, 0x7f0b00b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 1421
    .end local v24    # "themeResId":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_10

    const v2, 0x7f0401f6

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 1424
    const v2, 0x7f100480

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 1432
    if-eqz p1, :cond_11

    .line 1435
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1436
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1438
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1440
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1442
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_7

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1445
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()I

    .line 1448
    :cond_7
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1449
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1450
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1485
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/DashboardCategory;>;"
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_8

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1492
    :cond_8
    const v2, 0x7f100481

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1495
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1497
    const v2, 0x7f100077

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1498
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_b

    .line 1499
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    const v2, 0x7f1003ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1502
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1508
    const v2, 0x7f1000a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 1509
    .local v23, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    const v2, 0x7f10009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/settings/SettingsActivity$7;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1524
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1525
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1526
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1533
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_9
    :goto_5
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1534
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1535
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1536
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1542
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_a
    :goto_6
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1543
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1548
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v23    # "skipButton":Landroid/widget/Button;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1555
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1557
    const-string v2, "extra_from_search"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    .line 1558
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    if-eqz v2, :cond_0

    .line 1559
    sget-boolean v2, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1560
    const-string v2, "extra_header_id"

    const-wide/16 v6, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    .line 1561
    const-string v2, "extra_setting_value"

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    .line 1562
    const-string v2, "extra_fragment_bundle_key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    .line 1563
    const-string v2, "extra_second_fragment_bundle_key"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 1565
    const-string v2, "SettingsSearch"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    const-string v6, "extra_parent_preference_key"

    const-string v7, "None"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_c
    const-string v2, "extra_depth_counter_key"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 1568
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 1569
    sget v2, Lcom/android/settings/SettingsActivity;->mSearchSettingValue:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_18

    const/4 v2, 0x1

    :goto_7
    sput-boolean v2, Lcom/android/settings/SettingsActivity;->mDirectSettingEnabler:Z

    .line 1571
    sget-wide v6, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    const-wide/32 v8, 0x7f100653

    cmp-long v2, v6, v8

    if-nez v2, :cond_0

    .line 1572
    const-string v19, "com.vlingo.midas.gui.ConversationActivity"

    .line 1573
    .local v19, "fragment":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->checkVlingoAccepted(Landroid/content/Context;)Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    .line 1574
    const-string v19, "com.vlingo.midas.settings.SettingsScreen"

    .line 1576
    :cond_d
    new-instance v22, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v22, "searchIntent":Landroid/content/Intent;
    const-string v2, "com.vlingo.midas"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1579
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1395
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v19    # "fragment":Ljava/lang/String;
    .end local v21    # "isSubSettings":Z
    .end local v22    # "searchIntent":Landroid/content/Intent;
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1406
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1421
    .restart local v21    # "isSubSettings":Z
    :cond_10
    const v2, 0x7f0401f7

    goto/16 :goto_3

    .line 1453
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_15

    .line 1456
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_13

    .line 1457
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1458
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1466
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 1468
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1469
    .local v4, "initialArguments":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1470
    const-string v2, "com.android.settings.Settings$AppOpsDetailsActivity"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1471
    const-string v2, "package"

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :cond_12
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 1459
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_13
    if-eqz v21, :cond_14

    .line 1460
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1461
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_8

    .line 1463
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_8

    .line 1477
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 1479
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    .line 1480
    const v2, 0x7f0a0eba

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 1481
    const-class v2, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_4

    .line 1530
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v23    # "skipButton":Landroid/widget/Button;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1539
    :cond_17
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1569
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v15    # "buttonText":Ljava/lang/String;
    .end local v23    # "skipButton":Landroid/widget/Button;
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v11, 0x7f02063e

    const/16 v10, 0xcb

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1294
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1295
    const-string v5, "VZW"

    sget-object v8, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/settings/SettingsActivity;->mFullModeinSmallTablet:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string v5, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1297
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    if-eqz v5, :cond_5

    .line 1298
    const v5, 0x7f0a0ff5

    invoke-interface {p1, v6, v10, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 1299
    .local v2, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1300
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1301
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/settings/Settings;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1310
    .end local v2    # "mMenuItem":Landroid/view/MenuItem;
    :cond_1
    :goto_0
    sget-object v5, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1311
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    sget-object v5, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    sget v5, Lcom/android/settings/SettingsActivity;->mDeviceProvisioned:I

    if-ne v5, v7, :cond_4

    sget-object v5, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    const-string v8, "com.sec.providers.settingsearch"

    invoke-static {v5, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    if-nez v5, :cond_4

    .line 1315
    const/16 v5, 0xcc

    const v8, 0x7f0a06ae

    invoke-interface {p1, v6, v5, v7, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1316
    .local v3, "mMenuSearch":Landroid/view/MenuItem;
    const v5, 0x7f020013

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1317
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v3    # "mMenuSearch":Landroid/view/MenuItem;
    :cond_4
    :goto_1
    move v5, v7

    .line 1350
    :goto_2
    return v5

    .line 1303
    :cond_5
    const v5, 0x7f0a0ff6

    invoke-interface {p1, v6, v10, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 1304
    .restart local v2    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1305
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1306
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/android/settings/Settings;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1320
    .end local v2    # "mMenuItem":Landroid/view/MenuItem;
    :cond_6
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-nez v5, :cond_7

    move v5, v6

    .line 1321
    goto :goto_2

    .line 1324
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1325
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v5, 0x7f120006

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1328
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1330
    .local v4, "query":Ljava/lang/String;
    const v5, 0x7f10046a

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 1331
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 1333
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v5, :cond_9

    :cond_8
    move v5, v6

    .line 1334
    goto :goto_2

    .line 1337
    :cond_9
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-eqz v5, :cond_a

    .line 1338
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1341
    :cond_a
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 1342
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1343
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1345
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v5, :cond_b

    .line 1346
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1348
    :cond_b
    iget-object v5, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v4, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
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

    .line 6747
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    .line 6748
    .local v2, "return_val":Z
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/SettingsActivity;->mFullModeinSmallTablet:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6749
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-eqz v3, :cond_1

    .line 6750
    const v3, 0x7f0a0ff5

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 6751
    .local v1, "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6752
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 6754
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6755
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6756
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 6779
    :goto_0
    const/4 v2, 0x1

    .line 6781
    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "mMenuItem":Landroid/view/MenuItem;
    .end local v2    # "return_val":Z
    :cond_0
    return v2

    .line 6770
    .restart local v2    # "return_val":Z
    :cond_1
    const v3, 0x7f0a0ff6

    invoke-interface {p2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 6771
    .restart local v1    # "mMenuItem":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 6772
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 6774
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6775
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6776
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1738
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1740
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1741
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 1742
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    if-eqz v0, :cond_1

    .line 1745
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1746
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->drivingModeContentObserver:Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;

    .line 1755
    :cond_1
    :goto_0
    return-void

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 1750
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1753
    :cond_3
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    goto :goto_0
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 3478
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 3479
    .local v0, "fragmentClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3480
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3481
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 3482
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 3483
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3484
    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3488
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 12
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6232
    const/4 v5, 0x0

    .line 6233
    .local v5, "revert":Z
    iget-object v8, p0, Lcom/android/settings/SettingsActivity;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v8, :cond_2

    .line 6234
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6236
    .local v0, "airPlaneMode":I
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/SettingsActivity;->mMSADialog:Landroid/app/AlertDialog$Builder;

    .line 6237
    if-ne v0, v6, :cond_1

    .line 6238
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mMSADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

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

    new-instance v8, Lcom/android/settings/SettingsActivity$12;

    invoke-direct {v8, p0}, Lcom/android/settings/SettingsActivity$12;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6246
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6247
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->highlightHeader(I)V

    .line 6324
    .end local v0    # "airPlaneMode":I
    :cond_0
    :goto_0
    return-void

    .line 6250
    .restart local v0    # "airPlaneMode":I
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6255
    .local v4, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.irsettings"

    const-string v8, "com.sec.android.app.irsettings.InternationalRoaming_SingleDual"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6258
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6259
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6260
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6262
    .end local v0    # "airPlaneMode":I
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100683

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    if-eqz v8, :cond_3

    .line 6265
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$DeviceInfoSettingsActivity"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6267
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/SettingsActivity;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 6269
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 6273
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006b9

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006ba

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10068e

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings/SettingsActivity;->isKioskContainer:Z

    if-eqz v8, :cond_5

    .line 6276
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.NetworkManagement"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6278
    .restart local v3    # "cn":Landroid/content/ComponentName;
    invoke-direct {p0, v3}, Lcom/android/settings/SettingsActivity;->getPersonalIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 6279
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 6285
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f10063f

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 6286
    const/4 v5, 0x1

    .line 6289
    :cond_6
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f1006a2

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 6290
    sget-object v8, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "access_control_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_9

    move v1, v6

    .line 6292
    .local v1, "bAccessControlDisabled":Z
    :goto_1
    sget-object v8, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_a

    move v2, v6

    .line 6295
    .local v2, "bBasicMode":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 6299
    .end local v1    # "bAccessControlDisabled":Z
    .end local v2    # "bBasicMode":Z
    :cond_7
    iget-wide v8, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f100657

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 6300
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "toddler_mode_switch"

    const/4 v10, -0x2

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 6316
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 6318
    if-eqz v5, :cond_d

    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_d

    .line 6319
    iget-object v6, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsActivity;->highlightHeaderWithoutScroll(I)V

    goto/16 :goto_0

    :cond_9
    move v1, v7

    .line 6290
    goto :goto_1

    .restart local v1    # "bAccessControlDisabled":Z
    :cond_a
    move v2, v7

    .line 6292
    goto :goto_2

    .line 6302
    .end local v1    # "bAccessControlDisabled":Z
    :cond_b
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f4

    cmp-long v6, v6, v8

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 6309
    :cond_c
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f1006f2

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 6321
    :cond_d
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 3311
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->isKioskPersonal:Z

    if-eqz v0, :cond_0

    .line 3312
    const/4 v0, 0x0

    .line 3314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 2901
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

    .line 2907
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2908
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    check-cast v0, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    # invokes: Lcom/android/settings/SettingsActivity$HeaderAdapter;->setCheckBoxTypeValue(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/settings/SettingsActivity$HeaderAdapter;->access$700(Lcom/android/settings/SettingsActivity$HeaderAdapter;Landroid/view/View;)V

    .line 2912
    :goto_0
    return-void

    .line 2911
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2428
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 2429
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 2432
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2420
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2422
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3431
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3432
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3434
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3435
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 3438
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3442
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 3443
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3444
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->setEnablerForGuide()V

    .line 3448
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 6786
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6787
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/SettingsActivity;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings.Settings"

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6790
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6803
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_2

    .line 6804
    invoke-static {}, Lcom/android/settings/SettingsActivity;->callSearchMenu()V

    .line 6808
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 6792
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mPhoneTabStyle:Z

    if-nez v1, :cond_3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mTabletTabStyle:Z

    if-eqz v1, :cond_4

    .line 6793
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6798
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    goto :goto_0

    .line 6796
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 6790
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1722
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1723
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->onPauseTablet()V

    .line 1734
    :goto_0
    return-void

    .line 1729
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1166
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1168
    .local v3, "titleRes":I
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1169
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1170
    const v3, 0x7f0a06be

    .line 1180
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1181
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_search"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1183
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    .line 1184
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_9

    .line 1185
    sget-boolean v0, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceStartFragment , mSearchDepthCounter : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1187
    .local v2, "args":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 1188
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "args":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1191
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_3
    const-string v0, "extra_from_search"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1193
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 1194
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1195
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1202
    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 1203
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1205
    const/4 v0, 0x1

    .line 1223
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_2
    return v0

    .line 1171
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

    .line 1173
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1174
    const v3, 0x7f0a021d

    goto/16 :goto_0

    .line 1176
    :cond_6
    const v3, 0x7f0a021b

    goto/16 :goto_0

    .line 1198
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1199
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1210
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1211
    const v3, 0x7f0a06be

    .line 1221
    :cond_9
    :goto_3
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

    invoke-virtual/range {v4 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1223
    const/4 v0, 0x1

    goto :goto_2

    .line 1212
    :cond_a
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1214
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1215
    const v3, 0x7f0a021d

    goto :goto_3

    .line 1217
    :cond_b
    const v3, 0x7f0a021b

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1228
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2406
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 2407
    const/4 v0, 0x0

    .line 2409
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 2398
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 2399
    iput-object p1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 2400
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchResultsFragment:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, -0x1

    .line 3136
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3137
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3138
    sget-object v0, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3139
    :cond_0
    sget-wide v0, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3140
    sput-wide v2, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    .line 3144
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1688
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1689
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1690
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->onResumeTablet()V

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 1695
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_2

    .line 1696
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1697
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SettingsActivity;->invalidateCategories(Z)V

    .line 1700
    :cond_2
    new-instance v1, Lcom/android/settings/SettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsActivity$8;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1706
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    .line 1707
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1711
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1715
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1716
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 1644
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1646
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1648
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1649
    const-string v3, "com.android.settings.CURRENT_HEADER"

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1651
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_1

    .line 1652
    const-string v3, "com.android.settings.PARENT_HEADER"

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1655
    :cond_1
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1657
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1658
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v2

    .line 1659
    .local v2, "savedIndex":I
    sget-boolean v3, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save Tab index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_2
    const-string v3, "com.android.settings.ACTION_BAR_INDEX"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1684
    .end local v2    # "savedIndex":I
    :cond_3
    :goto_0
    return-void

    .line 1664
    :cond_4
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1665
    const-string v3, ":settings:categories"

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1668
    :cond_5
    const-string v3, ":settings:show_home_as_up"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1669
    const-string v3, ":settings:show_search"

    iget-boolean v4, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1671
    iget-boolean v3, p0, Lcom/android/settings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v3, :cond_6

    .line 1677
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 1678
    .local v0, "isExpanded":Z
    :goto_1
    const-string v3, ":settings:search_menu_expanded"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1679
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, "query":Ljava/lang/String;
    :goto_2
    const-string v3, ":settings:search_query"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_6
    const-string v3, ":settings:home_activities_count"

    iget v4, p0, Lcom/android/settings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1677
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 1679
    .restart local v0    # "isExpanded":Z
    :cond_8
    const-string v1, ""

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1285
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 1287
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment()V

    .line 1290
    :cond_0
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 0

    .prologue
    .line 6362
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    .line 6328
    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6329
    if-nez p1, :cond_1

    .line 6330
    invoke-super {p0, v2}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 6337
    :cond_0
    :goto_0
    return-void

    .line 6332
    :cond_1
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 6334
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Lcom/android/settings/SettingsActivity$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mAuthenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/SettingsActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 2389
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1988
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1989
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f100480

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1990
    if-eqz p2, :cond_0

    .line 1991
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1992
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1996
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1997
    return-void

    .line 1994
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1829
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    invoke-super/range {p0 .. p6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1872
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    if-eqz v0, :cond_4

    .line 1835
    const-string v0, "SettingsSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings , mSearchDepthCounter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    if-nez p2, :cond_1

    .line 1837
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1839
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_1
    const-string v0, "extra_from_search"

    invoke-virtual {p2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1841
    iget v0, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    if-le v0, v7, :cond_3

    .line 1842
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1852
    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v8

    .line 1854
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "extra_from_search"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1855
    const-string v0, "extra_depth_counter_key"

    iget v1, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1856
    const-string v0, "extra_second_fragment_bundle_key"

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1857
    const/16 v0, 0x160f

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1858
    iput-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    goto :goto_0

    .line 1846
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    .line 1860
    :cond_4
    const/4 v6, 0x0

    .line 1861
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_5

    .line 1862
    if-eqz p4, :cond_6

    .line 1863
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1869
    :cond_5
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1866
    :cond_6
    const-string v6, ""

    goto :goto_2
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1953
    const/4 v4, 0x0

    .line 1954
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1955
    if-eqz p4, :cond_1

    .line 1956
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1962
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 1964
    return-void

    .line 1959
    :cond_1
    const-string v4, ""

    goto :goto_0
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

    .line 3071
    iget-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    if-eqz v1, :cond_4

    .line 3072
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->DBG:Z

    if-eqz v1, :cond_0

    .line 3073
    const-string v1, "SettingsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings , mSearchDepthCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_0
    if-nez p2, :cond_1

    .line 3076
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3078
    .restart local p2    # "args":Landroid/os/Bundle;
    :cond_1
    const-string v1, "extra_from_search"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3080
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    if-le v1, v4, :cond_3

    .line 3081
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 3082
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3090
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 3091
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3092
    const-string v1, "extra_depth_counter_key"

    iget v2, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3093
    const-string v1, "extra_second_fragment_bundle_key"

    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3095
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3097
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 3126
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3085
    :cond_3
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 3086
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3098
    :cond_4
    sget-boolean v1, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    if-eqz v1, :cond_6

    .line 3099
    if-nez p2, :cond_5

    .line 3100
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "args":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3101
    .restart local p2    # "args":Landroid/os/Bundle;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3103
    :cond_5
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 3104
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "extra_from_search"

    sget-boolean v2, Lcom/android/settings/SettingsActivity;->mIsFromSearch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3105
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 3107
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    const-class v1, Lcom/android/settings/nfc/SBeam;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3108
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/settings/SettingsActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 3110
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 3121
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

    .line 3325
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mInLocalHeaderSwitch:Z

    if-nez v2, :cond_0

    .line 3326
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3327
    iput-object v3, p0, Lcom/android/settings/SettingsActivity;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 3330
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

    .line 3333
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, ":android:show_fragment"

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    :cond_1
    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportSfinder(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3336
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    if-eqz v2, :cond_4

    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-wide v4, Lcom/android/settings/SettingsActivity;->mSearchHeaderID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 3337
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3339
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_from_search"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3341
    iget v2, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    if-le v2, v6, :cond_6

    .line 3342
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 3343
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3351
    :cond_3
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3352
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3353
    const-string v2, "extra_depth_counter_key"

    iget v3, p0, Lcom/android/settings/SettingsActivity;->mSearchDepthCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3354
    const-string v2, "extra_second_fragment_bundle_key"

    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mSecondSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3357
    iput-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 3358
    iput-object v1, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 3359
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsActivity;->mOpenSearchHierarchy:Z

    .line 3362
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 3365
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3366
    invoke-static {p0, p1}, Lcom/android/settings/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3367
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->setEnablerForGuide()V

    .line 3371
    :cond_5
    return-void

    .line 3346
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 3347
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mSearchFragmentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method
