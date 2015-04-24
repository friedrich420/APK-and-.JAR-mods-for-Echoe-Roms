.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static final LARGE_FONT_SCALE:F

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static UseMultiWindow:Z

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field protected MESSAGE_DELAY:I

.field private isDeviceLockTime:Z

.field private isKioskContainer:Z

.field private isSecuredLock:Z

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

.field private mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerWithSmartRotation:Landroid/preference/Preference;

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private mAutoLockmode:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private mContext:Landroid/content/Context;

.field private mContextualPage:Landroid/preference/SwitchPreferenceScreen;

.field protected mContextualPageUncheckerHandler:Landroid/os/Handler;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDivider:Landroid/view/View;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field mDualFolderType:Z

.field private mEditScreenCapture:Landroid/preference/CheckBoxPreference;

.field private mFontList:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSize:Lcom/android/settings/FontSizeListPreference;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowModeObserver:Landroid/database/ContentObserver;

.field private mMultiWindowPref:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mNotificationEdit:Landroid/preference/PreferenceScreen;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mQuickLaunchPreference:Landroid/preference/ListPreference;

.field private mReadingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mReadingModeObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenCategory:Landroid/preference/PreferenceCategory;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartScreen:Landroid/preference/PreferenceScreen;

.field private mSmartScreenGuideDialog:Landroid/app/AlertDialog;

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field mSupportFolderType:Z

.field private mTouchKeyLight:Landroid/preference/ListPreference;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    .line 202
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    .line 274
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    .line 275
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    .line 319
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    .line 2037
    new-instance v0, Lcom/android/settings/DisplaySettings$16;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$16;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    .line 273
    :array_0
    .array-data 4
        0x7f1004ec
        0x7f1004ed
    .end array-data

    .line 274
    :array_1
    .array-data 4
        0x7f0a1489
        0x7f0a148a
        0x7f0a148b
        0x7f0a148c
        0x7f0a148d
    .end array-data

    .line 275
    :array_2
    .array-data 4
        0x7f0a1489
        0x7f0a148a
        0x7f0a148b
        0x7f0a148c
        0x7f0a148d
        0x7f0a1bd7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 241
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 263
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 268
    iput v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 269
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    .line 278
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 296
    iput v1, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 297
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 312
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 329
    iput v1, p0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    .line 332
    iput-boolean v1, p0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    .line 334
    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    .line 336
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 386
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    .line 394
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    .line 402
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 411
    new-instance v0, Lcom/android/settings/DisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    .line 419
    new-instance v0, Lcom/android/settings/DisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    .line 433
    new-instance v0, Lcom/android/settings/DisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    .line 440
    new-instance v0, Lcom/android/settings/DisplaySettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 2234
    new-instance v0, Lcom/android/settings/DisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$20;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    .line 2409
    new-instance v0, Lcom/android/settings/DisplaySettings$23;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$23;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 270
    nop

    :array_0
    .array-data 4
        0x7f020669
        0x7f02066a
        0x7f02066b
        0x7f02066c
    .end array-data

    .line 271
    :array_1
    .array-data 4
        0x7f02065f
        0x7f020660
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/FontSizeListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    return-void
.end method

.method static synthetic access$1200(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->removeEnabledScreenReaderValue()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DisplaySettings;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "intent_type"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z

    .prologue
    .line 2566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2567
    .local v0, "setting_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2568
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2569
    return-void
.end method

.method private checkFlashannotateExists()Z
    .locals 5

    .prologue
    .line 1055
    const/4 v1, 0x1

    .line 1057
    .local v1, "isFlashannotateExists":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.spen.flashannotate"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    return v1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DisplaySettings"

    const-string v3, "Screen capture Edit app doesn\'t exists."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 26
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v22

    const-string v23, "device_policy"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 1172
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_1

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 1173
    .local v12, "maxTimeout":J
    :goto_0
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1176
    .local v17, "sSalesCode":Ljava/lang/String;
    const/4 v9, -0x1

    .line 1178
    .local v9, "limit":I
    const v9, 0x927c0

    .line 1182
    int-to-long v0, v9

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1183
    const-wide/16 v22, 0x1

    cmp-long v22, v12, v22

    if-gez v22, :cond_0

    .line 1184
    int-to-long v12, v9

    .line 1188
    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-nez v22, :cond_2

    .line 1265
    :goto_1
    return-void

    .line 1172
    .end local v9    # "limit":I
    .end local v12    # "maxTimeout":J
    .end local v17    # "sSalesCode":Ljava/lang/String;
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_0

    .line 1192
    .restart local v9    # "limit":I
    .restart local v12    # "maxTimeout":J
    .restart local v17    # "sSalesCode":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    .line 1195
    .local v8, "idx":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c0020

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1197
    .local v5, "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c0021

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 1202
    .local v21, "values":[Ljava/lang/CharSequence;
    :goto_2
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v15, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v16, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x1

    .line 1205
    .local v14, "need_add":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_6

    .line 1206
    aget-object v22, v21, v7

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1207
    .local v18, "timeout":J
    cmp-long v22, v18, v12

    if-gtz v22, :cond_4

    .line 1208
    aget-object v22, v5, v7

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    aget-object v22, v21, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v22, v18, v22

    if-nez v22, :cond_3

    const/4 v14, 0x0

    .line 1214
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v22

    if-nez v22, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v22, v22, v18

    if-gez v22, :cond_4

    .line 1216
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_4

    move v8, v7

    .line 1205
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1199
    .end local v5    # "entries":[Ljava/lang/CharSequence;
    .end local v7    # "i":I
    .end local v14    # "need_add":Z
    .end local v15    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v16    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v18    # "timeout":J
    .end local v21    # "values":[Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c001e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1200
    .restart local v5    # "entries":[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c001f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "values":[Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 1222
    .restart local v7    # "i":I
    .restart local v14    # "need_add":Z
    .restart local v15    # "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v16    # "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1223
    .local v6, "entry":Ljava/lang/String;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_7

    if-eqz v14, :cond_7

    .line 1224
    invoke-virtual {v15, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1225
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1229
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_a

    .line 1230
    :cond_8
    const v22, 0x7f0a14ed

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1244
    .local v20, "userPreference":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1246
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1248
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v22, v22, v12

    if-gtz v22, :cond_b

    .line 1249
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1264
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_d

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1233
    .end local v20    # "userPreference":I
    :cond_a
    const-string v22, "DisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "revisedValues.size() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v10, v12, v22

    .line 1235
    .local v10, "last_timeout":J
    const-string v22, "DisplaySettings"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last_timeout : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_9

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v21, v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v22, v12, v22

    if-gez v22, :cond_9

    .line 1237
    const v22, 0x7f0a14ed

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1250
    .end local v10    # "last_timeout":J
    .restart local v20    # "userPreference":I
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/CharSequence;

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    cmp-long v22, v22, v12

    if-nez v22, :cond_c

    .line 1254
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1256
    :cond_c
    const-string v22, "DisplaySettings"

    const-string v23, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 1264
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_6
.end method

.method private getLedIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2344
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 2215
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 2216
    .local v4, "second":J
    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 2217
    .local v0, "minute":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 2219
    const-string v2, ""

    .line 2220
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 2221
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f11000a

    long-to-int v7, v0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2223
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 2224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2226
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 2227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11000b

    long-to-int v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2230
    :cond_2
    const-string v3, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    return-object v2
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1085
    const v0, 0x1120021

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1076
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.doze.component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1076
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1081
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isEnabledScreenReaderService()Z
    .locals 6

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2148
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 2149
    const-string v3, ""

    .line 2152
    :cond_0
    sget-object v0, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2154
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2156
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2157
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 2158
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2160
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 2161
    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2163
    const/4 v4, 0x1

    .line 2166
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 2198
    const/4 v1, 0x0

    .line 2199
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 2200
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2206
    :goto_0
    if-nez v1, :cond_2

    .line 2211
    :cond_0
    :goto_1
    return v2

    .line 2202
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2208
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 2209
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 2208
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1071
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1072
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeTalkBackDisablePopup()V
    .locals 5

    .prologue
    .line 2368
    const/4 v1, 0x0

    .line 2369
    .local v1, "dialogTitle":I
    const/4 v0, 0x0

    .line 2371
    .local v0, "dialogSummary":I
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v3, "pref_smart_stay_noti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2372
    const v1, 0x7f0a1485    # 1.8354E38f

    .line 2373
    const v0, 0x7f0a14e1

    .line 2379
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/settings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a08d1

    new-instance v4, Lcom/android/settings/DisplaySettings$22;

    invoke-direct {v4, p0}, Lcom/android/settings/DisplaySettings$22;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DisplaySettings$21;

    invoke-direct {v3, p0}, Lcom/android/settings/DisplaySettings$21;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2407
    return-void

    .line 2374
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v3, "pref_smart_pause_noti"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2375
    const v1, 0x7f0a1492

    .line 2376
    const v0, 0x7f0a14df

    goto :goto_0
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 10
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "device_policy"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1272
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 1273
    .local v4, "maxTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off_timeout"

    const-wide/16 v8, 0x7530

    invoke-static {v3, v6, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1274
    .local v0, "currentTimeout":J
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 1303
    return-void

    .line 1272
    .end local v0    # "currentTimeout":J
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private removeDisplayPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2331
    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2332
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2334
    :cond_0
    return-void
.end method

.method private removeEnabledScreenReaderValue()V
    .locals 7

    .prologue
    .line 2170
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2173
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2192
    :goto_0
    return-void

    .line 2176
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2177
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/settings/DisplaySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 2178
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2180
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2181
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 2183
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 2184
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2187
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2191
    .end local v2    # "componentNameString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setLedIndicator(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2351
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_charing"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2352
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_low_battery"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2353
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_missed_event"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2354
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "led_indicator_voice_recording"

    if-eqz p1, :cond_3

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2355
    return-void

    :cond_0
    move v0, v2

    .line 2351
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2352
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2353
    goto :goto_2

    :cond_3
    move v1, v2

    .line 2354
    goto :goto_3
.end method

.method private showTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 2109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a1125

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DisplaySettings$19;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$19;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/DisplaySettings$18;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$18;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$17;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2142
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2448
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2445
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2446
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2453
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 5
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2321
    .local v2, "values":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2322
    .local v1, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 2323
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2326
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2328
    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1647
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a0a5e

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1644
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1647
    :cond_2
    const v0, 0x7f0a0a5f

    goto :goto_2
.end method

.method private updateAccelerometerRotationSecondCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1652
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1653
    return-void
.end method

.method private updateAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x66

    .line 2420
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2438
    :goto_0
    return-void

    .line 2421
    :cond_0
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2423
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2424
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2427
    :cond_1
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 2429
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2430
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2432
    :cond_2
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 2433
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2435
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 7
    .param p1, "fontSizePref"    # Landroid/preference/ListPreference;

    .prologue
    .line 2302
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2303
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 2305
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2306
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2307
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 2308
    add-int/lit8 v5, v1, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2312
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2314
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2316
    return-void
.end method

.method private updateScreenModeSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1587
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1590
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1dc9

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1596
    .local v0, "idx":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1598
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1db1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1601
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1dca

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1604
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a1dcb

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 1596
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1639
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1542
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 1543
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1544
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 1547
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1550
    .local v0, "brightnessMode":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1554
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wake_gesture_enabled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1556
    .local v1, "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1560
    .end local v1    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 1561
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "doze_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1562
    .restart local v1    # "value":I
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1565
    .end local v1    # "value":I
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1566
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenModeSummary()V

    .line 1568
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 1569
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->getLedIndicator()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1570
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "display_battery_percentage"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1571
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 1572
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "edit_after_screen_capture"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1574
    :cond_5
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "button_key_light"

    const/16 v7, 0x5dc

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1575
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    .line 1577
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_e

    .line 1578
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    .line 1579
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sub_lcd_auto_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1580
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key_night_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    :goto_6
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1584
    :cond_6
    :goto_7
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_7
    move v2, v4

    .line 1550
    goto/16 :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v1    # "value":I
    :cond_8
    move v2, v4

    .line 1556
    goto/16 :goto_1

    :cond_9
    move v2, v4

    .line 1562
    goto/16 :goto_2

    .end local v1    # "value":I
    :cond_a
    move v2, v4

    .line 1570
    goto :goto_3

    :cond_b
    move v2, v4

    .line 1572
    goto :goto_4

    :cond_c
    move v2, v4

    .line 1579
    goto :goto_5

    :cond_d
    move v3, v4

    .line 1580
    goto :goto_6

    .line 1581
    :cond_e
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    if-eqz v2, :cond_6

    .line 1582
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sub_lcd_auto_lock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    :goto_8
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_f
    move v3, v4

    goto :goto_8
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 25
    .param p1, "currentTimeout"    # J

    .prologue
    .line 1092
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 1093
    .local v12, "preference":Landroid/preference/ListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 1094
    .local v7, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 1096
    .local v4, "adminTimeout":J
    :goto_0
    const-wide/16 v14, -0x1

    .line 1098
    .local v14, "summary_val":J
    const-wide/16 v20, 0x0

    cmp-long v19, p1, v20

    if-gez v19, :cond_3

    .line 1100
    const-string v13, ""

    .line 1152
    .local v13, "summary":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_screen_lock_after_timeout"

    const-wide/16 v22, 0x1388

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1153
    .local v8, "currentDeviceLockTimeout":J
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-eqz v19, :cond_0

    .line 1154
    cmp-long v19, v4, v8

    if-gez v19, :cond_0

    move-wide v8, v4

    .line 1156
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    cmp-long v19, v14, v8

    if-lez v19, :cond_10

    .line 1157
    const v19, 0x7f0a008f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1158
    const-wide/16 v20, 0x0

    cmp-long v19, v8, v20

    if-nez v19, :cond_1

    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1164
    :cond_1
    :goto_2
    return-void

    .line 1094
    .end local v4    # "adminTimeout":J
    .end local v8    # "currentDeviceLockTimeout":J
    .end local v13    # "summary":Ljava/lang/String;
    .end local v14    # "summary_val":J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1101
    .restart local v4    # "adminTimeout":J
    .restart local v14    # "summary_val":J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_4

    cmp-long v19, p1, v4

    if-gtz v19, :cond_4

    .line 1102
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "summary":Ljava/lang/String;
    goto :goto_1

    .line 1105
    .end local v13    # "summary":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 1106
    .local v10, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    .line 1107
    .local v18, "values":[Ljava/lang/CharSequence;
    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1108
    :cond_5
    const-string v13, ""

    .restart local v13    # "summary":Ljava/lang/String;
    goto :goto_1

    .line 1111
    .end local v13    # "summary":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    .line 1112
    .local v6, "best":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 1113
    aget-object v19, v18, v11

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1114
    .local v16, "timeout":J
    cmp-long v19, p1, v16

    if-ltz v19, :cond_7

    .line 1115
    move v6, v11

    .line 1112
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1120
    .end local v16    # "timeout":J
    :cond_8
    array-length v0, v10

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_a

    .line 1121
    :cond_9
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "summary":Ljava/lang/String;
    goto/16 :goto_1

    .line 1124
    .end local v13    # "summary":Ljava/lang/String;
    :cond_a
    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v19, v20, v4

    if-gez v19, :cond_b

    cmp-long v19, v4, p1

    if-gez v19, :cond_b

    .line 1125
    const-string v19, "DisplaySettings"

    const-string v20, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1127
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide v14, v4

    goto/16 :goto_1

    .line 1130
    .end local v13    # "summary":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-eqz v19, :cond_e

    cmp-long v19, p1, v4

    if-ltz v19, :cond_c

    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_e

    .line 1131
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 1132
    aget-object v13, v10, v6

    check-cast v13, Ljava/lang/String;

    .line 1135
    .restart local v13    # "summary":Ljava/lang/String;
    :goto_4
    aget-object v19, v18, v6

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_1

    .line 1134
    .end local v13    # "summary":Ljava/lang/String;
    :cond_d
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v10, v6

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "summary":Ljava/lang/String;
    goto :goto_4

    .line 1138
    .end local v13    # "summary":Ljava/lang/String;
    :cond_e
    const-wide/16 v20, 0x0

    cmp-long v19, v4, v20

    if-nez v19, :cond_f

    .line 1139
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1140
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide/from16 v14, p1

    goto/16 :goto_1

    .line 1142
    .end local v13    # "summary":Ljava/lang/String;
    :cond_f
    const v19, 0x7f0a06b7

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1143
    .restart local v13    # "summary":Ljava/lang/String;
    move-wide v14, v4

    goto/16 :goto_1

    .line 1161
    .end local v6    # "best":I
    .end local v10    # "entries":[Ljava/lang/CharSequence;
    .end local v11    # "i":I
    .end local v18    # "values":[Ljava/lang/CharSequence;
    .restart local v8    # "currentDeviceLockTimeout":J
    :cond_10
    invoke-virtual {v12, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateTouchKeyLightSummary()V
    .locals 2

    .prologue
    .line 2337
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 2338
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2339
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2341
    .end local v0    # "summary":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public createSmartScreenGuideDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "pref_noti"    # Ljava/lang/String;

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2360
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2361
    .local v0, "do_not_show_again":Z
    if-nez v0, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showSmartScreenGuideDialog()V

    .line 2364
    :cond_0
    return-void
.end method

.method floatToIndex(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 1308
    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v4, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "indices":[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1317
    .local v2, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 1318
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 1319
    .local v3, "thisVal":F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    .line 1320
    add-int/lit8 v4, v0, -0x1

    .line 1324
    .end local v3    # "thisVal":F
    :goto_2
    return v4

    .line 1311
    .end local v0    # "i":I
    .end local v1    # "indices":[Ljava/lang/String;
    .end local v2    # "lastVal":F
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1312
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 1314
    .end local v1    # "indices":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "indices":[Ljava/lang/String;
    goto :goto_0

    .line 1322
    .restart local v0    # "i":I
    .restart local v2    # "lastVal":F
    .restart local v3    # "thisVal":F
    :cond_2
    move v2, v3

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1324
    .end local v3    # "thisVal":F
    :cond_3
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public isContextualAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2241
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_s_pen"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2242
    .local v5, "SpenScreen":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_earphone"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 2243
    .local v3, "EarphoneScreen":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_audio_dock"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2244
    .local v2, "DockScreen":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_car_cradle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2245
    .local v0, "CarCardleScreen":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_desk_cardle"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2246
    .local v1, "DeskCradleScreen":I
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "contextual_page_roaming"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 2249
    .local v4, "RoamingScreen":I
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez v4, :cond_2

    move v6, v7

    .line 2251
    .local v6, "retVal":Z
    :goto_0
    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_0

    .line 2253
    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    move v6, v7

    .line 2255
    :cond_0
    :goto_1
    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2256
    if-eqz v6, :cond_4

    if-nez v2, :cond_4

    move v6, v7

    .line 2259
    :cond_1
    :goto_2
    const-string v7, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EarphoneScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DockScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " CarCardleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DeskCradleScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " RoamingScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retVal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    return v6

    .end local v6    # "retVal":Z
    :cond_2
    move v6, v8

    .line 2249
    goto :goto_0

    .restart local v6    # "retVal":Z
    :cond_3
    move v6, v8

    .line 2253
    goto :goto_1

    :cond_4
    move v6, v8

    .line 2256
    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1028
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DisplaySettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 452
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 453
    .local v18, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 454
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-eqz v24, :cond_31

    .line 455
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2b

    .line 456
    const v24, 0x7f07004a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_1

    .line 458
    const-string v24, "header_display_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 490
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_33

    const/4 v14, 0x1

    .line 492
    .local v14, "isSecondaryUser":Z
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_34

    const/4 v13, 0x1

    .line 493
    .local v13, "isKnoxUser":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    .line 495
    const-string v24, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    .line 497
    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "settings_listui"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-nez v24, :cond_35

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_35

    .line 499
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 514
    :cond_4
    if-eqz v13, :cond_5

    const-string v24, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_5

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    :cond_5
    const-string v24, "contextualpage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    .line 520
    const-string v24, "display_screen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    .line 521
    const-string v24, "display_advanced_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    :cond_7
    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_CONTEXTUAL_PAGE"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_37

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "contextualpage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 535
    :goto_4
    const-string v24, "notification_panel_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mNotificationEdit:Landroid/preference/PreferenceScreen;

    .line 537
    const-string v24, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "contextual_page"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 543
    :cond_8
    const-string v24, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "is_secured_lock"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    const/16 v24, 0x1

    :goto_5
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    .line 547
    const-string v24, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 549
    const-string v24, "accelerometer_with_smart_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 557
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 559
    :cond_9
    const-string v24, "accelerometer_with_smart_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 563
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.folder_type"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.dual_lcd"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_39

    const/16 v24, 0x1

    :goto_6
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    .line 565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v24

    if-eqz v24, :cond_3a

    const/16 v24, 0x1

    :goto_7
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 566
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    move/from16 v24, v0

    if-nez v24, :cond_3b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-eqz v24, :cond_3b

    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v24

    if-nez v24, :cond_3b

    .line 567
    const-string v24, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 572
    :goto_8
    const-string v24, "reading_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "reading_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 579
    const-string v24, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1120055

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-eqz v24, :cond_c

    if-eqz v13, :cond_3c

    .line 583
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 588
    :cond_d
    :goto_9
    const-string v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 590
    const-string v24, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/BrightnessPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/BrightnessPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 592
    const-string v24, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/flipfont/FontListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3d

    if-eqz v13, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    move/from16 v24, v0

    if-nez v24, :cond_3d

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v24, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/flipfont/FontListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 600
    :cond_e
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 601
    .local v16, "mIntent":Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 604
    const-string v24, "Direct"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mDirect : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DisplaySettings;->mDirect:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_f
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v24, "smart_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "settings_listui"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_3e

    .line 622
    :cond_10
    :goto_b
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 623
    const-string v24, "features_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 624
    const-string v24, "smart_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 628
    :cond_11
    const-string v24, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 629
    const-string v24, "smartscreen_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 637
    const-string v24, "smartscreen_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 640
    const-string v24, "brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/BrightnessPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 642
    const-string v24, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 643
    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 644
    const-string v24, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 646
    :cond_12
    const-string v24, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 648
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c0020

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0c0021

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 653
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 656
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 658
    const-string v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 662
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_14

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    .line 665
    :cond_14
    const-string v24, "display_battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 667
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v24

    if-nez v24, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 668
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 675
    :cond_16
    const-string v24, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 678
    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_40

    .line 679
    const-string v24, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 685
    :goto_c
    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_41

    .line 686
    const-string v24, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 724
    :goto_d
    const-string v24, "auto_rotate"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "display"

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 730
    const-string v24, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 739
    const-string v24, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1120051

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_42

    .line 745
    :goto_e
    const-string v24, "power_saving_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v24, "power_saving_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_43

    const/16 v24, 0x1

    :goto_f
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 749
    if-eqz v14, :cond_44

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v24, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 753
    const-string v24, "DisplaySettings"

    const-string v25, "remove Screen mode"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_17
    :goto_10
    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_18

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 782
    :cond_18
    const-string v24, "auto_adjust_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v24, "auto_adjust_touch"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_45

    const/16 v24, 0x1

    :goto_11
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 788
    const-string v24, "quick_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    .line 789
    const-string v24, "quick_launch_app"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 791
    .local v7, "currentQuicklaunch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 794
    const/4 v5, 0x1

    .line 796
    .local v5, "canStatusBarHide":Z
    :try_start_0
    const-string v24, "window"

    invoke-static/range {v24 .. v24}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v23

    .line 798
    .local v23, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-nez v24, :cond_46

    const/4 v5, 0x1

    .line 803
    .end local v23    # "wm":Landroid/view/IWindowManager;
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_19

    if-nez v5, :cond_19

    const-string v24, "ro.product.name"

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, "p4note"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 804
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 806
    :cond_1a
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_1b

    if-eqz v5, :cond_1b

    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 807
    const-string v24, "more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 808
    .local v17, "moreSettings":Landroid/preference/PreferenceCategory;
    if-eqz v17, :cond_1c

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 812
    .end local v17    # "moreSettings":Landroid/preference/PreferenceCategory;
    :cond_1c
    const-string v24, "accelerometer_second"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 814
    const-string v24, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v24, "sub_lcd_auto_lock"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_47

    const/16 v24, 0x1

    :goto_13
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 816
    const-string v24, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    .line 818
    .local v15, "keyBacklightPreference":Landroid/preference/ListPreference;
    const-string v24, "key_backlight_timeout"

    const/16 v25, 0xbb8

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 821
    const-string v24, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v24, "key_night_mode"

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_48

    const/16 v24, 0x1

    :goto_14
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    move/from16 v24, v0

    if-eqz v24, :cond_49

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0a17bf

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const v25, 0x7f0a17bf

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(I)V

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const v25, 0x7f0a17ca

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x7

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 839
    :goto_15
    const-string v24, "key_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.multiwindow"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    sput-boolean v24, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    .line 842
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1d

    sget-boolean v24, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v24, :cond_1d

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "multiwindow_facade"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getAvailableMultiInstanceCnt()I

    move-result v6

    .line 846
    .local v6, "count":I
    const v24, 0x7f0a1ba2

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 847
    .local v20, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 849
    .end local v6    # "count":I
    .end local v20    # "summary":Ljava/lang/String;
    :cond_1d
    new-instance v24, Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Lcom/android/settings/MultiWindowPrefEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v24

    if-nez v24, :cond_1e

    .line 852
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    .line 855
    :cond_1e
    sget-boolean v24, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-nez v24, :cond_20

    .line 856
    const-string v24, "key_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_1f

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 859
    :cond_1f
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_20

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 866
    :cond_20
    const-string v24, "edit_screen_capture"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    .line 867
    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EDIT_AFTER_SCREEN_CAPTURE"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4b

    .line 868
    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v24

    if-nez v24, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->checkFlashannotateExists()Z

    move-result v24

    if-eqz v24, :cond_22

    :cond_21
    if-eqz v13, :cond_23

    .line 869
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 875
    :cond_23
    :goto_16
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-eqz v24, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_4c

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-nez v24, :cond_4c

    .line 877
    const-string v24, "general"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 878
    const-string v24, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 879
    const-string v24, "led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 880
    const-string v24, "notification_panel_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 881
    const-string v24, "key_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 882
    const-string v24, "contextualpage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 883
    const-string v24, "screen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 884
    const-string v24, "accelerometer_second"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 885
    const-string v24, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 886
    const-string v24, "features_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 887
    const-string v24, "smart_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 888
    const-string v24, "key_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 889
    const-string v24, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 890
    const-string v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 891
    const-string v24, "clear_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 892
    const-string v24, "more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 893
    const-string v24, "quick_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 894
    const-string v24, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 895
    const-string v24, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 896
    const-string v24, "auto_adjust_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 897
    const-string v24, "notification_pulse"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 898
    const-string v24, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 899
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 914
    :cond_24
    :goto_17
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2014Supported()Z

    move-result v24

    if-eqz v24, :cond_4e

    .line 915
    :cond_25
    const-string v24, "display_battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 916
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 917
    const-string v24, "general"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 918
    const-string v24, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 919
    const-string v24, "notification_panel_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 920
    const-string v24, "screen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 921
    const-string v24, "key_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 922
    const-string v24, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 923
    const-string v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 924
    const-string v24, "more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 925
    const-string v24, "smartscreen_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 932
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_26

    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    move/from16 v24, v0

    if-nez v24, :cond_27

    .line 933
    :cond_26
    const-string v24, "font_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 937
    :cond_27
    const-string v24, "black_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v11

    .line 944
    .local v11, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v11}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v24

    if-eqz v24, :cond_28

    .line 945
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    .line 947
    const-string v24, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 948
    const-string v24, "header_display_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 949
    const-string v24, "theme_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 950
    const-string v24, "font_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 951
    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 952
    const-string v24, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 953
    const-string v24, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 954
    const-string v24, "accelerometer_second"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 955
    const-string v24, "accelerometer_with_smart_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 956
    const-string v24, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 957
    const-string v24, "smartscreen_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 958
    const-string v24, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 959
    const-string v24, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 960
    const-string v24, "reading_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 961
    const-string v24, "power_saving_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 962
    const-string v24, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 963
    const-string v24, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 964
    const-string v24, "led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 965
    const-string v24, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 966
    const-string v24, "touch_key_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 967
    const-string v24, "edit_screen_capture"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 968
    const-string v24, "auto_adjust_touch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 969
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 970
    const-string v24, "display_battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 971
    const-string v24, "general"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 972
    const-string v24, "wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 973
    const-string v24, "notification_panel_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 974
    const-string v24, "key_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 975
    const-string v24, "contextualpage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 976
    const-string v24, "screen_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 977
    const-string v24, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 978
    const-string v24, "features_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 979
    const-string v24, "smart_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 980
    const-string v24, "key_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 981
    const-string v24, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 982
    const-string v24, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 983
    const-string v24, "more_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 984
    const-string v24, "font_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 985
    const-string v24, "quick_launch"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 986
    const-string v24, "key_night_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 987
    const-string v24, "key_backlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 988
    const-string v24, "wifi_display"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 989
    const-string v24, "black_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 990
    const-string v24, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->removeDisplayPreference(Ljava/lang/String;)V

    .line 996
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_29

    .line 997
    sget v24, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_29

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    .line 999
    .local v12, "extra_bundle":Landroid/os/Bundle;
    const-string v24, "extra_parent_preference_key"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1000
    .local v21, "targetKey":Ljava/lang/String;
    sget v24, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4f

    const/16 v22, 0x1

    .line 1001
    .local v22, "value":Z
    :goto_19
    const-string v24, "screensaver"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_50

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_29

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_29

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1020
    .end local v12    # "extra_bundle":Landroid/os/Bundle;
    .end local v21    # "targetKey":Ljava/lang/String;
    .end local v22    # "value":Z
    :cond_29
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2a

    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_2a

    .line 1021
    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 1024
    :cond_2a
    return-void

    .line 461
    .end local v5    # "canStatusBarHide":Z
    .end local v7    # "currentQuicklaunch":I
    .end local v8    # "currentTimeout":J
    .end local v11    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v13    # "isKnoxUser":Z
    .end local v14    # "isSecondaryUser":Z
    .end local v15    # "keyBacklightPreference":Landroid/preference/ListPreference;
    .end local v16    # "mIntent":Landroid/content/Intent;
    :cond_2b
    const v24, 0x7f070049

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 463
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v24

    if-eqz v24, :cond_2c

    invoke-static {}, Lcom/android/settings/Utils;->isConceptForVZW()Z

    move-result v24

    if-eqz v24, :cond_2e

    .line 464
    :cond_2c
    const-string v24, "header_display_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 465
    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 466
    const-string v24, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 481
    :cond_2d
    :goto_1b
    const-string v24, "theme_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :cond_2e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_2f

    .line 471
    const-string v24, "onehand_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 473
    :cond_2f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 474
    :cond_30
    const-string v24, "onehand_operation_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1b

    .line 484
    :cond_31
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-eqz v24, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isListUI(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_32

    .line 485
    const v24, 0x7f070048

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 487
    :cond_32
    const v24, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 490
    :cond_33
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 492
    .restart local v14    # "isSecondaryUser":Z
    :cond_34
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 503
    .restart local v13    # "isKnoxUser":Z
    :cond_35
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_36

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 506
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "key_simple_led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 533
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 544
    :cond_38
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 563
    :cond_39
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 565
    :cond_3a
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 569
    :cond_3b
    const-string v24, "accelerometer_with_smart_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 584
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_9

    .line 596
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    goto/16 :goto_a

    .line 614
    .restart local v16    # "mIntent":Landroid/content/Intent;
    :cond_3e
    const-string v24, "features_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_3f

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    const-string v25, "features_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 617
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreen:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_b

    .line 682
    .restart local v8    # "currentTimeout":J
    :cond_40
    const-string v24, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 689
    :cond_41
    const-string v24, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 743
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 746
    :cond_43
    const/16 v24, 0x0

    goto/16 :goto_f

    .line 755
    :cond_44
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 756
    const-string v24, "screen_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 757
    .local v19, "screenMode":Landroid/preference/PreferenceScreen;
    const v24, 0x7f0401e6

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    goto/16 :goto_10

    .line 783
    .end local v19    # "screenMode":Landroid/preference/PreferenceScreen;
    :cond_45
    const/16 v24, 0x0

    goto/16 :goto_11

    .line 798
    .restart local v5    # "canStatusBarHide":Z
    .restart local v7    # "currentQuicklaunch":I
    .restart local v23    # "wm":Landroid/view/IWindowManager;
    :cond_46
    const/4 v5, 0x0

    goto/16 :goto_12

    .line 799
    .end local v23    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v10

    .line 800
    .local v10, "e":Landroid/os/RemoteException;
    const-string v24, "DisplaySettings"

    const-string v25, "Failing checking whether status bar can hide"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    const/4 v5, 0x0

    goto/16 :goto_12

    .line 815
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_47
    const/16 v24, 0x0

    goto/16 :goto_13

    .line 822
    .restart local v15    # "keyBacklightPreference":Landroid/preference/ListPreference;
    :cond_48
    const/16 v24, 0x0

    goto/16 :goto_14

    .line 831
    :cond_49
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 832
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mDualFolderType:Z

    move/from16 v24, v0

    if-nez v24, :cond_4a

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 834
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 872
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_16

    .line 902
    :cond_4c
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-nez v24, :cond_4d

    .line 903
    const-string v24, "header_display_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_24

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 908
    :cond_4d
    const-string v24, "key_multi_window"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_24

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 927
    :cond_4e
    const-string v24, "smartscreen_stay"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 928
    const-string v24, "smartscreen_pause"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    .line 929
    const-string v24, "font_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1000
    .restart local v11    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v12    # "extra_bundle":Landroid/os/Bundle;
    .restart local v21    # "targetKey":Ljava/lang/String;
    :cond_4f
    const/16 v22, 0x0

    goto/16 :goto_19

    .line 1009
    .restart local v22    # "value":Z
    :cond_50
    const-string v24, "reading_mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_29

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v24

    if-eqz v24, :cond_29

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1a
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1507
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 1508
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1509
    .local v3, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1510
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040194

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1511
    .local v2, "layout":Landroid/view/View;
    const v6, 0x7f100167

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 1512
    .local v4, "mcheck":Landroid/widget/CheckBox;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1514
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 1515
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/DisplaySettings$11;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/settings/DisplaySettings$11;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1538
    :cond_0
    :goto_0
    return-object v5

    .line 1529
    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0e41

    new-instance v7, Lcom/android/settings/DisplaySettings$12;

    invoke-direct {v7, p0}, Lcom/android/settings/DisplaySettings$12;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-static {v5, v6, v7}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2577
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 2579
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1468
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1473
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v0}, Lcom/android/settings/MultiWindowPrefEnabler;->pause()V

    .line 1476
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1479
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1485
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1489
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1492
    :cond_0
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v0, :cond_1

    .line 1493
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1495
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1499
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1503
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 24
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1842
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 1843
    .local v13, "key":Ljava/lang/String;
    const-string v20, "screen_timeout"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v20, p2

    .line 1844
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1846
    .local v19, "value":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1847
    const-string v20, "DisplaySettings"

    const-string v21, "isInDefaultTimeoutList = true"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_timeout_rollback"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 1858
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "screen_off_timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1860
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 1861
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1862
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.settings.SCREENTIMEOUT_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v11, "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1868
    .end local v11    # "i":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "device_policy"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 1869
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v8, :cond_7

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v16

    .line 1870
    .local v16, "maxTimeout":J
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "lock_screen_lock_after_timeout"

    const-wide/16 v22, 0x1388

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1871
    .local v6, "currentDeviceLockTimeout":J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_2

    .line 1872
    cmp-long v20, v16, v6

    if-gez v20, :cond_2

    move-wide/from16 v6, v16

    .line 1874
    :cond_2
    const-string v20, "DisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "value: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const-string v20, "DisplaySettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "currentDeviceLockTimeout: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->isSecuredLock:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-eqz v20, :cond_3

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v20, v6

    if-lez v20, :cond_3

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->showScreenTimeDialog()V

    .line 2008
    .end local v6    # "currentDeviceLockTimeout":J
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v16    # "maxTimeout":J
    .end local v19    # "value":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v20, p2

    .line 2009
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2010
    .local v4, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "screen_brightness_mode"

    if-eqz v4, :cond_22

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2013
    .end local v4    # "auto":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v20, p2

    .line 2014
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 2015
    .local v19, "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "wake_gesture_enabled"

    if-eqz v19, :cond_23

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2017
    .end local v19    # "value":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 2018
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 2019
    .restart local v19    # "value":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "doze_enabled"

    if-eqz v19, :cond_24

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2021
    .end local v19    # "value":Z
    :cond_6
    const/16 v20, 0x1

    return v20

    .line 1850
    .local v19, "value":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v9

    .line 1851
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v20, "DisplaySettings"

    const-string v21, "could not persist screen timeout setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1864
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 1865
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v20, "DisplaySettings"

    const-string v21, "could not persist screen timeout setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1869
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_7
    const-wide/16 v16, 0x0

    goto/16 :goto_2

    .line 1880
    .end local v8    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v19    # "value":I
    :cond_8
    const-string v20, "font_size"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v20, p2

    .line 1882
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v10

    .line 1883
    .local v10, "fontIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "font_size"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1884
    .local v18, "previousIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1885
    add-int/lit8 v10, v10, 0x1

    .line 1887
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "font_size"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1888
    sget v20, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    sget v20, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    move/from16 v0, v20

    if-ne v10, v0, :cond_c

    .line 1889
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.settings.FONT_SIZE_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1890
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v20, "large_font"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1893
    const-string v20, "DisplaySettings"

    const-string v21, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    .end local v11    # "i":Landroid/content/Intent;
    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1904
    .local v15, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v20, "pref_font_noti"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1906
    .local v5, "do_not_show_again":Ljava/lang/Boolean;
    sget v20, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    move/from16 v0, v20

    if-ne v10, v0, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_b

    .line 1907
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 1909
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_3

    .line 1894
    .end local v5    # "do_not_show_again":Ljava/lang/Boolean;
    .end local v15    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_c
    sget v20, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    sget v20, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 1895
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.settings.FONT_SIZE_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1896
    .restart local v11    # "i":Landroid/content/Intent;
    const-string v20, "large_font"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1897
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1899
    const-string v20, "DisplaySettings"

    const-string v21, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1911
    .end local v10    # "fontIndex":I
    .end local v11    # "i":Landroid/content/Intent;
    .end local v18    # "previousIndex":I
    :cond_d
    const-string v20, "touch_key_light"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v20, p2

    .line 1912
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1914
    .restart local v19    # "value":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "button_key_light"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1919
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateTouchKeyLightSummary()V

    goto/16 :goto_3

    .line 1916
    :catch_2
    move-exception v9

    .line 1917
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v20, "DisplaySettings"

    const-string v21, "could not persist Touch key light setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1920
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "value":I
    :cond_e
    const-string v20, "quick_launch"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    move-object/from16 v20, p2

    .line 1921
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1923
    .restart local v19    # "value":I
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "quick_launch_app"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1925
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.settings.QUICKLAUNCH_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1926
    .restart local v11    # "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1927
    const-string v20, "DisplaySettings"

    const-string v21, "android.settings.QUICKLAUNCH_CHANGED is broadcasted"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 1929
    .end local v11    # "i":Landroid/content/Intent;
    :catch_3
    move-exception v9

    .line 1930
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v20, "DisplaySettings"

    const-string v21, "could not persist quick launch setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1932
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "value":I
    :cond_f
    const-string v20, "key_backlight"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v20, p2

    .line 1933
    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 1935
    .restart local v19    # "value":I
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "key_backlight_timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3

    .line 1937
    :catch_4
    move-exception v9

    .line 1938
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v20, "DisplaySettings"

    const-string v21, "could not persist key backlight setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1940
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "value":I
    :cond_10
    const-string v20, "contextualpage_settings"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v20, p2

    .line 1941
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v19, 0x1

    .line 1942
    .restart local v19    # "value":I
    :goto_9
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DisplaySettings;->MESSAGE_DELAY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1941
    .end local v19    # "value":I
    :cond_11
    const/16 v19, 0x0

    goto :goto_9

    .line 1945
    .restart local v19    # "value":I
    :cond_12
    new-instance v12, Landroid/content/Intent;

    const-string v20, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1946
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "contextual_page"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_13

    .line 1947
    const-string v20, "changed"

    const-string v21, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1948
    const-string v20, "DisplaySettings"

    const-string v21, "CONTEXTUALPAGE_SWITCH_CHANGED changed = true"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "contextual_page"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1955
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1951
    :cond_13
    const-string v20, "changed"

    const-string v21, "false"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1952
    const-string v20, "DisplaySettings"

    const-string v21, "CONTEXTUALPAGE_SWITCH_CHANGED changed = false"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1957
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v19    # "value":I
    :cond_14
    const-string v20, "screensaver"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v20, p2

    .line 1958
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_15

    const/16 v19, 0x1

    .line 1959
    .restart local v19    # "value":I
    :goto_b
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 1960
    const-string v20, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v20

    if-nez v20, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "desk_home_screen_display"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1963
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1964
    .local v14, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v20, 0x7f0a06c3

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1965
    const v20, 0x7f0a0ff4

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1966
    const v20, 0x104000a

    new-instance v21, Lcom/android/settings/DisplaySettings$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings$14;-><init>(Lcom/android/settings/DisplaySettings;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1974
    const/high16 v20, 0x1040000

    new-instance v21, Lcom/android/settings/DisplaySettings$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DisplaySettings$15;-><init>(Lcom/android/settings/DisplaySettings;)V

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1980
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1981
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 1958
    .end local v14    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v19    # "value":I
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 1983
    .restart local v19    # "value":I
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "desk_home_screen_display"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1984
    new-instance v20, Lcom/android/settings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1985
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    .line 1988
    :cond_17
    new-instance v20, Lcom/android/settings/DreamBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1989
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    goto/16 :goto_3

    .line 1991
    .end local v19    # "value":I
    :cond_18
    const-string v20, "reading_mode"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    move-object/from16 v20, p2

    .line 1992
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v19, 0x1

    .line 1993
    .restart local v19    # "value":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "e_reading_display_mode"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1992
    .end local v19    # "value":I
    :cond_19
    const/16 v19, 0x0

    goto :goto_c

    .line 1995
    :cond_1a
    const-string v20, "accelerometer_with_smart_rotation"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1996
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_1b

    const-string v20, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static/range {v20 .. v20}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 1997
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v20, p2

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_1c

    const/16 v20, 0x1

    :goto_d
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_1c
    const/16 v20, 0x0

    goto :goto_d

    .line 1998
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    move-object/from16 v20, p2

    .line 1999
    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    .line 2000
    .local v19, "value":Z
    if-nez v19, :cond_1e

    .line 2001
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "user_rotation"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2003
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "accelerometer_rotation"

    if-eqz v19, :cond_1f

    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1f
    const/16 v20, 0x0

    goto :goto_e

    .line 2005
    .end local v19    # "value":Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v20, p2

    check-cast v20, Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_21

    const/16 v20, 0x1

    :goto_f
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_21
    const/16 v20, 0x0

    goto :goto_f

    .line 2010
    .restart local v4    # "auto":Z
    :cond_22
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 2015
    .end local v4    # "auto":Z
    .restart local v19    # "value":Z
    :cond_23
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 2019
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_24
    const/16 v20, 0x0

    goto/16 :goto_6
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 2026
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v1, :cond_1

    .line 2027
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 2034
    :goto_0
    return v0

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 2034
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1699
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1701
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    iget v10, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v9, v10}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(I)V

    .line 1704
    iget-boolean v9, p0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v9, :cond_0

    .line 1705
    sget v9, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1706
    sget v9, Lcom/android/settings/DisplaySettings;->mSettingValue:I

    if-ne v9, v7, :cond_3

    move v6, v7

    .line 1707
    .local v6, "value":Z
    :goto_0
    instance-of v9, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_4

    move-object v0, p2

    .line 1708
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1709
    .local v0, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1710
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1723
    .end local v0    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v6    # "value":Z
    :cond_0
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_b

    .line 1724
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v9}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1725
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_5

    :goto_1
    invoke-static {v9, v7}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 1838
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_3
    return v7

    :cond_3
    move v6, v8

    .line 1706
    goto :goto_0

    .line 1712
    .restart local v6    # "value":Z
    :cond_4
    instance-of v9, p2, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_0

    move-object v5, p2

    .line 1713
    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    .line 1714
    .local v5, "switchStatePreference":Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1715
    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_3

    .end local v5    # "switchStatePreference":Landroid/preference/SwitchPreferenceScreen;
    .end local v6    # "value":Z
    :cond_5
    move v7, v8

    .line 1725
    goto :goto_1

    .line 1726
    :cond_6
    iget-boolean v9, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v9, :cond_9

    .line 1727
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1728
    .restart local v6    # "value":Z
    if-nez v6, :cond_7

    .line 1729
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "user_rotation"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1731
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accelerometer_rotation"

    if-eqz v6, :cond_8

    :goto_4
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v7, v8

    goto :goto_4

    .line 1733
    .end local v6    # "value":Z
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_a

    :goto_5
    invoke-static {v9, v7}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_a
    move v7, v8

    goto :goto_5

    .line 1735
    :cond_b
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1736
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1737
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "display_battery_percentage"

    if-eqz v6, :cond_c

    move v8, v7

    :cond_c
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 1739
    .end local v6    # "value":Z
    :cond_d
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1740
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1741
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1742
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.settings.ModePreviewTablet"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1743
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1746
    :cond_e
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v7, "com.android.settings.NewModePreview"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1750
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1752
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1753
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1754
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "edit_after_screen_capture"

    if-eqz v6, :cond_10

    move v8, v7

    :cond_10
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1756
    .end local v6    # "value":Z
    :cond_11
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1757
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_mode"

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_12

    :goto_6
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1758
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto/16 :goto_2

    :cond_12
    move v7, v8

    .line 1757
    goto :goto_6

    .line 1759
    :cond_13
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1760
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1761
    .restart local v6    # "value":Z
    if-nez v6, :cond_14

    .line 1762
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "user_rotation"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1764
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accelerometer_rotation_second"

    if-eqz v6, :cond_15

    :goto_7
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_15
    move v7, v8

    goto :goto_7

    .line 1765
    .end local v6    # "value":Z
    :cond_16
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1766
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sub_lcd_auto_lock"

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_17

    :goto_8
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_17
    move v7, v8

    goto :goto_8

    .line 1768
    :cond_18
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1769
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "key_night_mode"

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_19

    :goto_9
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_19
    move v7, v8

    goto :goto_9

    .line 1770
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 1771
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1773
    .restart local v6    # "value":Z
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->isEnabledScreenReaderService()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1774
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->showTalkBackDisablePopup()V

    goto/16 :goto_2

    .line 1776
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    if-eqz v6, :cond_1c

    :goto_a
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1777
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1778
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1779
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/settings/DisplaySettings$13;

    invoke-direct {v7, p0}, Lcom/android/settings/DisplaySettings$13;-><init>(Lcom/android/settings/DisplaySettings;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_1c
    move v7, v8

    .line 1776
    goto :goto_a

    .line 1786
    .end local v6    # "value":Z
    :cond_1d
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1787
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_adjust_touch"

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_1e

    :goto_b
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1788
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1789
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAutoAdjustTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->enableGloveMode(Z)Z

    goto/16 :goto_2

    :cond_1e
    move v7, v8

    .line 1787
    goto :goto_b

    .line 1790
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 1791
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1792
    .restart local v6    # "value":Z
    const-string v9, "pref_smart_stay_noti"

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 1793
    if-eqz v6, :cond_21

    .line 1794
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1795
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    .line 1798
    :cond_20
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 1801
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "intelligent_sleep_mode"

    if-eqz v6, :cond_22

    move v8, v7

    :cond_22
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1803
    .end local v6    # "value":Z
    :cond_23
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1804
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    .line 1805
    .restart local v6    # "value":Z
    const-string v9, "pref_smart_pause_noti"

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    .line 1806
    if-eqz v6, :cond_25

    .line 1807
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1808
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->makeTalkBackDisablePopup()V

    goto/16 :goto_3

    .line 1811
    :cond_24
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->createSmartScreenGuideDialog(Ljava/lang/String;)V

    .line 1814
    :cond_25
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "smart_pause"

    if-eqz v6, :cond_26

    move v8, v7

    :cond_26
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1815
    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v8, v6}, Lcom/android/settings/DisplaySettings;->broadcastSmartScreenStatusChanged(Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1817
    .end local v6    # "value":Z
    :cond_27
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "header_display_wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1818
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v8

    if-le v8, v11, :cond_2

    .line 1819
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1820
    .local v2, "i":Landroid/content/Intent;
    const-string v8, "com.sec.android.app.wallpaperchooser"

    const-string v9, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1825
    .end local v2    # "i":Landroid/content/Intent;
    :cond_28
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1826
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getWallpaperVersionCode(Landroid/content/Context;)I

    move-result v8

    if-le v8, v11, :cond_2

    .line 1827
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1828
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v8, "com.sec.android.app.wallpaperchooser"

    const-string v9, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1833
    .end local v2    # "i":Landroid/content/Intent;
    :cond_29
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1834
    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mSimpleLedIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/settings/DisplaySettings;->setLedIndicator(Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 18

    .prologue
    .line 1366
    const/4 v11, 0x0

    .line 1367
    .local v11, "super_mOpenDetailMenu":Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1368
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1370
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "intelligent_sleep_mode"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v15, "smart_pause"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "intelligent_sleep_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "intelligent_rotation_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "smart_pause"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "smart_scroll"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowEnabler:Lcom/android/settings/MultiWindowPrefEnabler;

    invoke-virtual {v13}, Lcom/android/settings/MultiWindowPrefEnabler;->resume()V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v13, v14}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1387
    .local v4, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 1389
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_off_timeout"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "auto_adjust_touch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "contextual_page"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_7

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "e_reading_display_mode"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_8

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "e_reading_display_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mReadingModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1405
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1406
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1407
    const-string v13, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v8, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v13, v14, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1409
    const-string v13, "DisplaySettings"

    const-string v14, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/16 v14, 0x64

    if-lt v13, v14, :cond_9

    const/4 v9, 0x1

    .line 1417
    .local v9, "isKnoxUser":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1418
    .local v10, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_a

    .line 1419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v13}, Lcom/android/settings/BrightnessPreference;->directBrightness()V

    .line 1428
    :cond_0
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v13, :cond_1

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "accelerometer_rotation_second"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1431
    :cond_1
    sget-boolean v13, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v13, :cond_2

    .line 1432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "multi_window_enabled"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "multi_window_enabled"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1435
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "access_control_enabled"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mAccessControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->updateAccessControlCheckbox()V

    .line 1439
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/DisplaySettings;->mOpenDetailMenu:Z

    if-eqz v13, :cond_3

    .line 1442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 1443
    .local v7, "extra_bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_3

    .line 1444
    const-string v13, "extra_parent_preference_key"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1445
    .local v12, "targetKey":Ljava/lang/String;
    const-string v13, "brightness"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAvailableBrightness()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1446
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1447
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1451
    .end local v7    # "extra_bundle":Landroid/os/Bundle;
    .end local v12    # "targetKey":Ljava/lang/String;
    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "access_control_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_d

    const/4 v2, 0x1

    .line 1456
    .local v2, "bAccessControlDisabled":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "easy_mode_switch"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    const/4 v3, 0x1

    .line 1459
    .local v3, "bBasicMode":Z
    :goto_8
    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    const/4 v6, 0x1

    .line 1460
    .local v6, "enabled":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mMultiWindowSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v13, v6}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->checkFlashannotateExists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mEditScreenCapture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v13, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1464
    :cond_4
    return-void

    .line 1374
    .end local v2    # "bAccessControlDisabled":Z
    .end local v3    # "bBasicMode":Z
    .end local v4    # "currentTimeout":J
    .end local v6    # "enabled":Z
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "isKnoxUser":Z
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1375
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1400
    .restart local v4    # "currentTimeout":J
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1401
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1414
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1420
    .restart local v9    # "isKnoxUser":Z
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    .line 1421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v13}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    goto/16 :goto_5

    .line 1422
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/16 v14, 0x9

    if-ne v13, v14, :cond_0

    .line 1423
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    if-eqz v13, :cond_0

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/DisplaySettings;->isKioskContainer:Z

    if-nez v13, :cond_0

    .line 1424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DisplaySettings;->mFontList:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v13}, Lcom/android/settings/flipfont/FontListPreference;->directFontList()V

    goto/16 :goto_5

    .line 1432
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 1454
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1456
    .restart local v2    # "bAccessControlDisabled":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 1459
    .restart local v3    # "bBasicMode":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 10
    .param p1, "pref"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1329
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v3

    .line 1337
    .local v3, "index":I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1339
    .local v1, "fontIndex":I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    sget v5, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    sget v5, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    if-ne v1, v5, :cond_0

    .line 1341
    sget v3, Lcom/android/settings/DisplaySettings;->HUGE_FONT_INDEX:I

    .line 1342
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1350
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v5

    if-ne v5, v9, :cond_2

    .line 1351
    const v5, 0x7f0c002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, "fontSizeNames":[Ljava/lang/String;
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v5, :cond_1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    .line 1356
    add-int/lit8 v3, v3, 0x1

    .line 1358
    :cond_1
    const v5, 0x7f0a06cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1361
    return-void

    .line 1330
    .end local v1    # "fontIndex":I
    .end local v2    # "fontSizeNames":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "DisplaySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1353
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fontIndex":I
    .restart local v3    # "index":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    const v5, 0x7f0c0029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fontSizeNames":[Ljava/lang/String;
    goto :goto_1
.end method

.method public showScreenTimeDialog()V
    .locals 14

    .prologue
    .line 2078
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2079
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 2080
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 2081
    .local v6, "maxTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2082
    .local v2, "currentDeviceLockTimeout":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-eqz v9, :cond_0

    .line 2083
    cmp-long v9, v6, v2

    if-gez v9, :cond_0

    move-wide v2, v6

    .line 2085
    :cond_0
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDeviceLockTimeout: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 2089
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 2090
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2093
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2094
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04018d

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2095
    .local v5, "layout":Landroid/view/View;
    const v9, 0x7f1003b3

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2096
    .local v8, "tv":Landroid/widget/TextView;
    const v9, 0x7f0a0090

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2099
    const v9, 0x7f0a06b5

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2100
    const v9, 0x104000a

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2102
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 2103
    iget-object v9, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 2104
    return-void

    .line 2080
    .end local v2    # "currentDeviceLockTimeout":J
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "maxTimeout":J
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0
.end method

.method public showSmartScreenGuideDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 2461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2464
    .local v7, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2466
    .local v3, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    .line 2467
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->dismiss()V

    .line 2468
    iput-object v14, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2471
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 2472
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f04021d

    invoke-virtual {v5, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2474
    .local v6, "layout":Landroid/view/View;
    const v10, 0x7f1004ee

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    .line 2475
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v10, :cond_4

    .line 2476
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 2477
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 2483
    :cond_1
    :goto_0
    const v10, 0x7f100167

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 2485
    .local v8, "mcheck":Landroid/widget/CheckBox;
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    array-length v10, v10

    new-array v9, v10, [Landroid/widget/TextView;

    .line 2486
    .local v9, "tvList":[Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 2488
    .local v2, "dialogTitle":I
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v11, "pref_smart_stay_noti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2489
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 2490
    iget-boolean v10, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v10, :cond_5

    .line 2491
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartStayHelpFolderText:[I

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    .line 2495
    :goto_1
    const v2, 0x7f0a1485    # 1.8354E38f

    .line 2501
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v11, "pref_smart_stay_noti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2503
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v10, v10, v13

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v13

    .line 2504
    aget-object v10, v9, v13

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v11, v11, v13

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2506
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v10, v10, v12

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v12

    .line 2507
    const-string v1, ""

    .line 2508
    .local v1, "description":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v10, :cond_8

    .line 2509
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v10, v10

    if-ge v4, v10, :cond_a

    .line 2510
    if-eq v4, v12, :cond_3

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_7

    .line 2511
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v11, v11, v4

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2479
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "dialogTitle":I
    .end local v4    # "i":I
    .end local v8    # "mcheck":Landroid/widget/CheckBox;
    .end local v9    # "tvList":[Landroid/widget/TextView;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    if-eqz v10, :cond_1

    .line 2480
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDivider:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2493
    .restart local v2    # "dialogTitle":I
    .restart local v8    # "mcheck":Landroid/widget/CheckBox;
    .restart local v9    # "tvList":[Landroid/widget/TextView;
    :cond_5
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartStayHelpText:[I

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    goto :goto_1

    .line 2496
    :cond_6
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v11, "pref_smart_pause_noti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2497
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartPauseAnimationImage:[I

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 2498
    const v2, 0x7f0a1492

    goto/16 :goto_2

    .line 2513
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v11, v11, v4

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2517
    .end local v4    # "i":I
    :cond_8
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_5
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    array-length v10, v10

    if-ge v4, v10, :cond_a

    .line 2518
    if-ne v4, v12, :cond_9

    .line 2519
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v11, v11, v4

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2517
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2521
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/DisplaySettings;->mSmartHelpText:[I

    aget v11, v11, v4

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 2525
    :cond_a
    aget-object v10, v9, v12

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2543
    .end local v1    # "description":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_b
    :goto_7
    const v10, 0x7f100171

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 2545
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2546
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2548
    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/DisplaySettings$24;

    invoke-direct {v11, p0, v3, v8}, Lcom/android/settings/DisplaySettings$24;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    .line 2556
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 2557
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartScreenGuideDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/android/settings/DisplaySettings$25;

    invoke-direct {v11, p0}, Lcom/android/settings/DisplaySettings$25;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2562
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->startAnimation()V

    .line 2563
    return-void

    .line 2526
    :cond_c
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->pref_common_noti:Ljava/lang/String;

    const-string v11, "pref_smart_pause_noti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2528
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v10, v10, v13

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v13

    .line 2529
    aget-object v10, v9, v13

    const v11, 0x7f0a14b2

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2531
    sget-object v10, Lcom/android/settings/DisplaySettings;->mSmartScreenHelpID:[I

    aget v10, v10, v12

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v9, v12

    .line 2532
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0a14b3

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2533
    .restart local v1    # "description":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v10, 0x7f0a14b4

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v10, 0x7f0a14b5

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2535
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v10, 0x7f0a14b6    # 1.83541E38f

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2536
    iget-boolean v10, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v10, :cond_d

    .line 2537
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v10, 0x7f0a1bd7

    invoke-virtual {p0, v10}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2539
    :cond_d
    aget-object v10, v9, v12

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public updateAccessControlCheckbox()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1684
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "access_control_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1685
    .local v0, "enable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1688
    .local v1, "mIsBasicMode":Z
    :goto_1
    sget-boolean v4, Lcom/android/settings/DisplaySettings;->UseMultiWindow:Z

    if-eqz v4, :cond_0

    .line 1689
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1692
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1693
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerWithSmartRotation:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1694
    return-void

    .end local v0    # "enable":Z
    .end local v1    # "mIsBasicMode":Z
    :cond_1
    move v0, v3

    .line 1684
    goto :goto_0

    .restart local v0    # "enable":Z
    :cond_2
    move v1, v3

    .line 1685
    goto :goto_1

    .restart local v1    # "mIsBasicMode":Z
    :cond_3
    move v2, v3

    .line 1689
    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 1658
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1659
    .local v1, "fontScale":F
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1661
    sget v1, Lcom/android/settings/DisplaySettings;->LARGE_FONT_SCALE:F

    .line 1662
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1668
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1669
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 1671
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1672
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 1681
    .end local v1    # "fontScale":F
    :goto_0
    return-void

    .line 1674
    .restart local v1    # "fontScale":F
    :cond_1
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    .end local v1    # "fontScale":F
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "DisplaySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
