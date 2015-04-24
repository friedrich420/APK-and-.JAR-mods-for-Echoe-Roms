.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private bRegisterReceiver:Z

.field private isDeviceLockTime:Z

.field private isMyprofile:I

.field private layoutType:I

.field private mAdditionalInfo:Landroid/preference/PreferenceScreen;

.field private mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAutoSwipe:Landroid/preference/CheckBoxPreference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mCameraShortcut:Landroid/preference/CheckBoxPreference;

.field private mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockSize_with_preview:Landroid/preference/PreferenceScreen;

.field private mClockWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

.field private mFavoriteApps:Landroid/preference/PreferenceScreen;

.field private mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

.field private mFlipCoverCategory:Landroid/preference/PreferenceCategory;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field mInkEffectSummaryForTablet:[I

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMagazineCard:Landroid/preference/PreferenceScreen;

.field private mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPatternType:Landroid/preference/ListPreference;

.field private mPatternType_with_preview:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

.field private mSelectInfo:Landroid/preference/Preference;

.field private mSetShortcuts:Landroid/preference/ListPreference;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mShowInformation:Landroid/preference/PreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mStartFromSearch:Z

.field private mSviewColor:Landroid/preference/Preference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

.field private mVibrationFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 194
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 239
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 250
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 252
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    .line 254
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 262
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 263
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 267
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 279
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 291
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    .line 303
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    .line 310
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$2;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void

    .line 279
    :array_0
    .array-data 4
        0x7f0a16a4
        0x7f0a16a5
        0x7f0a16a7
        0x7f0a16a8
        0x7f0a16aa
        0x7f0a16ab
        0x7f0a16ac
        0x7f0a16a9
        0x7f0a16ae
    .end array-data

    .line 291
    :array_1
    .array-data 4
        0x7f0a16a4
        0x7f0a16a5
        0x7f0a16a7
        0x7f0a16a8
        0x7f0a16aa
        0x7f0a16ab
        0x7f0a16ac
        0x7f0a16a9
        0x7f0a16ae
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockscreenMenuSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenMenuSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenMenuSettings;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->saveCameraShortcutSharedPreferences()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 2887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2888
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2889
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2890
    return-void
.end method

.method private checkCameraShortcutGuidePopupAvailable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3117
    const/4 v0, 0x0

    .line 3118
    .local v0, "doNotShow":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.settings.LockscreenMenuSettings.CameraShortcut"

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3120
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 3121
    const-string v4, "DoNotShowDialog"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3122
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 355
    .local v19, "root":Landroid/preference/PreferenceScreen;
    if-eqz v19, :cond_0

    .line 356
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 358
    :cond_0
    const v25, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 360
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-eqz v25, :cond_93

    const/4 v10, 0x1

    .line 362
    .local v10, "isSecondaryUser":Z
    :goto_0
    const/16 v18, 0x0

    .line 363
    .local v18, "resid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_95

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_94

    .line 365
    const v18, 0x7f0700bf

    .line 411
    :goto_1
    if-eqz v18, :cond_1

    .line 412
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 415
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 416
    if-eqz v19, :cond_2

    .line 417
    invoke-virtual/range {v19 .. v19}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 419
    :cond_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/LockscreenMenuSettings;->layoutType:I

    .line 420
    const v25, 0x7f0700bb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 426
    :cond_3
    const-string v25, "show_information"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 428
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :cond_4
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 434
    .local v6, "ca":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_5

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 461
    :cond_5
    const-string v25, "lock_after_timeout"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a008c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a008c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c0024

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0c0025

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 471
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 476
    :cond_7
    const-string v25, "biometric_weak_liveliness"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 480
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 482
    const-string v25, "power_button_instantly_locks"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 486
    const v25, 0x7f0700b7

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    const v25, 0x7f0700c6

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x10000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 490
    const-string v25, "visiblepattern"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_9
    const-string v25, "keyguard_enable_widgets"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 520
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 528
    :cond_b
    const-string v25, "owner_info_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 530
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    :cond_d
    const-string v25, "lock_screen_widget_options"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 536
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_e

    const-string v25, "ro.product.name"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "u0lte"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportStart_J_project()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 538
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const v26, 0x7f0a16ff

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_98

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 543
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_99

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 548
    :cond_10
    const-string v25, "quick_note"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v26, "com.samsung.android.quickmemo"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_11

    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a1723

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const v26, 0x7f0a1724

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 554
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_12

    const v25, 0x7f0700bf

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_12
    const-string v25, "auto_swipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 560
    .local v17, "res":Landroid/content/res/Resources;
    const/16 v22, 0x0

    .line 561
    .local v22, "temp_max_attempts":I
    const/4 v5, 0x0

    .line 563
    .local v5, "auto_swipe_summary":Ljava/lang/String;
    const v25, 0x7f0700c4

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9a

    .line 565
    const/16 v22, 0xa

    .line 577
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 578
    if-nez v10, :cond_9d

    .line 579
    const v25, 0x7f0a1bc6

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 583
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    :cond_14
    const-string v25, "visiblesignature"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 591
    const-string v25, "signature_verification_level"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 593
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 597
    :cond_15
    const-string v25, "unlock_tactile_feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 598
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Vibrator;

    invoke-virtual/range {v25 .. v25}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_16

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_motion_tilt_to_unlock"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2013"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 624
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_face_with_voice"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 626
    .local v11, "isfacevalue":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_18

    .line 627
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 628
    .local v7, "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    const v25, 0x7f0a025a

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 629
    const v25, 0x7f0a025a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 631
    .end local v7    # "configureLockScreenPreference":Landroid/preference/PreferenceScreen;
    :cond_18
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .end local v11    # "isfacevalue":I
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 638
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 639
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mLockPatternUtils.isSecureForSetting(): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "is_secured_lock"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-eqz v25, :cond_9e

    const/16 v25, 0x1

    :goto_6
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 644
    :cond_1b
    const-string v25, "dualclock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 646
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_a1

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "dualclock_menu_settings"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_9f

    const/16 v25, 0x1

    :goto_7
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "dualclock_menu_settings"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_a0

    const v25, 0x7f0a0a5e

    :goto_8
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 655
    :cond_1c
    :goto_9
    const-string v25, "safetyzone_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1d

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "easy_mode_switch"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a2

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 670
    :cond_1d
    const-string v25, "set_shortcuts"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 675
    :cond_1e
    const-string v25, "lock_screen_favorite_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 683
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_20

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 688
    :cond_20
    const-string v25, "lock_screen_shortcut_menu"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForLockscreenShortcut()Z

    move-result v25

    if-nez v25, :cond_21

    invoke-static {}, Lcom/android/settings/Utils;->hasDAForCameraShortcut()Z

    move-result v25

    if-eqz v25, :cond_22

    .line 695
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_22

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 700
    :cond_22
    const-string v25, "lock_screen_camera_shortcut"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_23

    const-string v25, "lock_screen_camera_shortcut"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 705
    :cond_23
    const-string v25, "lock_screen_finger_print"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_fingerprint_shortcut"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 707
    .local v13, "mDefaultFS":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_24

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v26, v0

    if-eqz v13, :cond_a3

    const/16 v25, 0x1

    :goto_b
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 712
    :cond_24
    const-string v25, "unlock_effect"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 713
    const-string v25, "unlock_effect_with_preview"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_25

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 723
    :cond_25
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_26

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 726
    :cond_26
    const-string v25, "charging_effect_with_preview"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 727
    const-string v25, "2"

    sget-object v26, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_27

    const-string v25, "1.5"

    sget-object v26, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_27

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_27

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 730
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 734
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lockscreen_ripple_effect"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 735
    .local v14, "mDefaultUnlock":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_30

    .line 736
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_28

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BLIND"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_28

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTRING"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_28

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTCUT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_28

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_a4

    .line 741
    :cond_28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v3, "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v4, "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a16a4

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a7

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BLIND"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_29

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfd

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_29
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTRING"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c01

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a5

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_2a
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "BRILLIANTCUT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c02

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a6

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_2b
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_2c

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfe

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a0

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_2c
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2d

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1bfc

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a00a1

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_2d
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "RIPPLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-nez v25, :cond_2e

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a1c18

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a009e

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 804
    .end local v3    # "aChangedEffectEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "aChangedEffectEntryValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 809
    :cond_30
    const-string v25, "ink_effect"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_32

    .line 811
    const-string v25, "hltejs01dcm"

    const-string v26, "ro.product.device"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_31

    const-string v25, "SC-02F"

    const-string v26, "ro.product.model"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_31

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "INK"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_32

    .line 813
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 817
    :cond_32
    const-string v25, "help_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_33

    .line 819
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_33

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 824
    :cond_33
    const-string v25, "camera_short_cut"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_35

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 827
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-nez v25, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_34

    .line 829
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 831
    :cond_35
    const-string v25, "say_your_wakeup"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 833
    const-string v25, "cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 834
    const-string v25, "flip_cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    .line 835
    const-string v25, "automatic_unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 836
    const-string v25, "sview_color"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    .line 837
    const-string v25, "select_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v8

    .line 840
    .local v8, "coverType":I
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "coverType"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v8, v0, :cond_36

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v8, v0, :cond_3b

    :cond_36
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_3b

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 844
    :cond_37
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3b

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 846
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 847
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 848
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 850
    :cond_3b
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v8, v0, :cond_a6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_a6

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 852
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 853
    :cond_3d
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_40

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 855
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 856
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 876
    :cond_40
    :goto_d
    const v25, 0x7f0700ba

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_48

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a1744

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 883
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_42

    .line 888
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_43

    .line 893
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_44

    .line 894
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "INK"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_44

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 900
    :cond_44
    const-string v25, "set_wakeup_command"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_46

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 903
    .local v20, "set_wakeup_commant_intent":Landroid/content/Intent;
    if-eqz v20, :cond_46

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 905
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 906
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_46

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_45

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 909
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_46

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 915
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "set_wakeup_commant_intent":Landroid/content/Intent;
    :cond_46
    const-string v25, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_48

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_47

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 918
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_48

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 923
    :cond_48
    invoke-static {}, Lcom/android/settings/Utils;->hasNewVoiceControlConcept()Z

    move-result v25

    if-nez v25, :cond_49

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4a

    .line 924
    :cond_49
    const-string v25, "lock_screen_wakeup_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4a

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 930
    :cond_4a
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v25

    if-eqz v25, :cond_91

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_4c

    .line 934
    const-string v25, "multiple_lock_screenswitch"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4b

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    const-string v26, "com.android.settings.LockScreenSettings"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings/LockscreenMenuSettings$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$3;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 948
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4c

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 954
    :cond_4c
    const-string v25, "lock_screen_magazine_card"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 966
    const-string v25, "lock_screen_clock_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4e

    .line 968
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_4d

    .line 969
    const-string v25, "lock_screen_clock_settings"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 971
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const-string v26, "com.android.settings.LockScreenSettings"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings/LockscreenMenuSettings$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$4;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 982
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "my_profile_enabled"

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b1

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4f

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 992
    :cond_4f
    :goto_e
    const-string v25, "clock_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 993
    const-string v25, "clock_size_with_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    .line 994
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b2

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1002
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_51

    .line 1003
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_50

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1005
    :cond_50
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b3

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1010
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "my_profile_enabled"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-nez v25, :cond_b4

    const/16 v25, 0x1

    :goto_11
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1012
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_53

    .line 1013
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_52

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1016
    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b5

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1021
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "my_profile_enabled"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-nez v25, :cond_b6

    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1024
    :cond_53
    const-string v25, "pattern_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    .line 1025
    const-string v25, "pattern_type_with_preview"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_54

    .line 1031
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_54

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1037
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_55

    .line 1038
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_55

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1044
    :cond_55
    const-string v25, "lock_screen_date_and_year"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_58

    .line 1046
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_56

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_57

    .line 1047
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1048
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v27, "lock_screen_date_and_year"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_b7

    const/16 v25, 0x1

    :goto_14
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1052
    :cond_58
    const-string v25, "lock_screen_myprofile_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_59

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_b8

    .line 1057
    :cond_59
    :goto_15
    const-string v25, "vibration_feedback"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    .line 1058
    const-string v25, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Vibrator;

    .line 1060
    .local v24, "vibrator":Landroid/os/Vibrator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5b

    if-eqz v24, :cond_5a

    invoke-virtual/range {v24 .. v24}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v25

    if-nez v25, :cond_5b

    .line 1061
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1063
    :cond_5b
    const-string v25, "additional_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    .line 1064
    const-string v25, "additional_information_for_weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    .line 1065
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_5c

    invoke-static {}, Lcom/android/settings/Utils;->isH_Device()Z

    move-result v25

    if-eqz v25, :cond_5d

    :cond_5c
    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_5d

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_b9

    .line 1068
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5e

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1093
    :cond_5e
    :goto_16
    const-string v25, "lock_screen_wakeup_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-eqz v25, :cond_5f

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1097
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_60

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_60

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1099
    const-string v25, "LockScreenMenu"

    const-string v26, "removePreference lock_screen_wakeup_settings if Svoice is not supported"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_61

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1104
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_62

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1107
    :cond_62
    const-string v25, "biometric_weak_improve_matching"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 1109
    .local v15, "mImproveFace":Landroid/preference/Preference;
    const-string v25, "1"

    const-string v26, "1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_63

    if-nez v10, :cond_63

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1113
    :cond_63
    const-string v25, "LockScreenMenu"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "lock type :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0256

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_bf

    .line 1116
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029c

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1117
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f7

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_64

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1122
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_65

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1124
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_66

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1126
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_67

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1128
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_68

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1130
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_69

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1132
    :cond_69
    if-eqz v15, :cond_6a

    .line 1133
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1134
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6b

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1136
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6c

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1138
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6d

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1140
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6f

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_6e

    .line 1141
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1143
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_be

    .line 1520
    :cond_70
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_91

    .line 1522
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029b

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_71

    .line 1525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1526
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_72

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1528
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_73

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1530
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_74

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1532
    :cond_74
    if-eqz v15, :cond_75

    .line 1533
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1534
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_76

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1536
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_77

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1538
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_78

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1540
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_79

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1542
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7a

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1544
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7b

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1546
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7c

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1548
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7d

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1550
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7e

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1552
    :cond_7e
    if-eqz v6, :cond_7f

    .line 1553
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1554
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_80

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1556
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_81

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1558
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_82

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1560
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_83

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1562
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_84

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1564
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_85

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1566
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_86

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1568
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_87

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1570
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_88

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1572
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_89

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1574
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8a

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1576
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8b

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1578
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8c

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1580
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8d

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1582
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8e

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1584
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8f

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1586
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_90

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShowInformation:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1588
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_91

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1590
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    .line 1597
    .end local v15    # "mImproveFace":Landroid/preference/Preference;
    .end local v24    # "vibrator":Landroid/os/Vibrator;
    :cond_91
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    move/from16 v25, v0

    if-eqz v25, :cond_92

    .line 1598
    sget v25, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_92

    .line 1599
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 1600
    .local v9, "extra_bundle":Landroid/os/Bundle;
    const-string v25, "extra_parent_preference_key"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1601
    .local v21, "targetKey":Ljava/lang/String;
    sget v25, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_156

    const/16 v23, 0x1

    .line 1602
    .local v23, "value":Z
    :goto_18
    const-string v25, "lock_screen_shortcut_menu"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_157

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_92

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1622
    .end local v9    # "extra_bundle":Landroid/os/Bundle;
    .end local v21    # "targetKey":Ljava/lang/String;
    .end local v23    # "value":Z
    :cond_92
    :goto_19
    return-object v19

    .line 360
    .end local v5    # "auto_swipe_summary":Ljava/lang/String;
    .end local v6    # "ca":Landroid/preference/PreferenceCategory;
    .end local v8    # "coverType":I
    .end local v10    # "isSecondaryUser":Z
    .end local v13    # "mDefaultFS":I
    .end local v14    # "mDefaultUnlock":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .end local v18    # "resid":I
    .end local v22    # "temp_max_attempts":I
    :cond_93
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 367
    .restart local v10    # "isSecondaryUser":Z
    .restart local v18    # "resid":I
    :cond_94
    const v18, 0x7f0700ba

    .line 368
    const v25, 0x7f0a0256

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 370
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_96

    .line 372
    const v18, 0x7f0700b7

    .line 373
    const v25, 0x7f0a029d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 374
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v25

    if-eqz v25, :cond_97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v25

    if-eqz v25, :cond_97

    .line 376
    const v18, 0x7f0700c6

    .line 377
    const v25, 0x7f0a029e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1

    .line 379
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 409
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_motion_tilt_to_unlock"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 381
    :sswitch_0
    const v18, 0x7f0700c2

    .line 382
    const v25, 0x7f0a025d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1a

    .line 385
    :sswitch_1
    const v18, 0x7f0700be

    .line 386
    const v25, 0x7f0a1a8b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1a

    .line 390
    :sswitch_2
    const v18, 0x7f0700c4

    .line 391
    const v25, 0x7f0a0296

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1a

    .line 395
    :sswitch_3
    const v18, 0x7f0700b8

    .line 396
    const v25, 0x7f0a026e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1a

    .line 401
    :sswitch_4
    const v18, 0x7f0700c1

    .line 402
    const v25, 0x7f0a0298

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_1a

    .line 405
    :sswitch_5
    const v18, 0x7f0700b9

    .line 406
    const v25, 0x7f0a025f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto/16 :goto_1a

    .line 540
    .restart local v6    # "ca":Landroid/preference/PreferenceCategory;
    :cond_98
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 544
    :cond_99
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 567
    .restart local v5    # "auto_swipe_summary":Ljava/lang/String;
    .restart local v17    # "res":Landroid/content/res/Resources;
    .restart local v22    # "temp_max_attempts":I
    :cond_9a
    const v25, 0x7f0700c2

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9b

    .line 568
    const v25, 0x7f0e0016

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    goto/16 :goto_4

    .line 570
    :cond_9b
    const v25, 0x7f0700be

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9c

    .line 571
    const/16 v22, 0xf

    goto/16 :goto_4

    .line 574
    :cond_9c
    const/16 v22, 0xa

    goto/16 :goto_4

    .line 581
    :cond_9d
    const v25, 0x7f0a1bc7

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 640
    :cond_9e
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 647
    :cond_9f
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 649
    :cond_a0
    const v25, 0x7f0a0a5f

    goto/16 :goto_8

    .line 651
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 657
    :cond_a2
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 709
    .restart local v13    # "mDefaultFS":I
    :cond_a3
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 797
    .restart local v14    # "mDefaultUnlock":I
    :cond_a4
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "RIPPLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_a5

    .line 798
    const-string v25, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removeUnsupportedEffect(Ljava/lang/CharSequence;)V

    .line 800
    :cond_a5
    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "POPPINGCOLOURS"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2f

    .line 801
    const-string v25, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removeUnsupportedEffect(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 858
    .restart local v8    # "coverType":I
    :cond_a6
    if-eqz v8, :cond_a7

    const/16 v25, 0x5

    move/from16 v0, v25

    if-eq v8, v0, :cond_a7

    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v8, v0, :cond_ac

    :cond_a7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_ac

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 860
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 861
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 862
    :cond_aa
    const-string v25, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v25 .. v25}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_40

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 864
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 867
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ad

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFlipCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 870
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 871
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 872
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 873
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 989
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4f

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_e

    .line 999
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_f

    .line 1008
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_10

    .line 1010
    :cond_b4
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 1019
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_12

    .line 1021
    :cond_b6
    const/16 v25, 0x0

    goto/16 :goto_13

    .line 1048
    :cond_b7
    const/16 v25, 0x0

    goto/16 :goto_14

    .line 1054
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_15

    .line 1074
    .restart local v24    # "vibrator":Landroid/os/Vibrator;
    :cond_b9
    sget-object v25, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v26, "com.sec.android.app.shealth"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_ba

    const-string v25, "ro.config.rm_preload_enabled"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_bb

    :cond_ba
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isPedometerSupported(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_bd

    .line 1076
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_additional_steps"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_bc

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1079
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    .line 1086
    :cond_bc
    :goto_1b
    const v25, 0x7f0700bf

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_5e

    .line 1087
    const-string v25, "additional_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    .line 1088
    const-string v25, "additional_information_for_weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1082
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_bc

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1b

    .line 1144
    .restart local v15    # "mImproveFace":Landroid/preference/Preference;
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1146
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a025d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_ce

    .line 1148
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029f

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1149
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f8

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c1

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_c0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_c1

    .line 1154
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1155
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c3

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_c2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v25

    if-nez v25, :cond_c2

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_c3

    .line 1158
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1160
    :cond_c3
    if-eqz v15, :cond_c4

    .line 1161
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1162
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c5

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1164
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c6

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1166
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c7

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1168
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c8

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1170
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c9

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1172
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ca

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1174
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cb

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1176
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cc

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1178
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_cd

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1180
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1184
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a1a8b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_df

    .line 1186
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1187
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a1

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1189
    if-eqz v15, :cond_cf

    .line 1190
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1191
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d0

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1193
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d1

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1195
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d2

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1197
    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d3

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1199
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d4

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1201
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d5

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1203
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d6

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1205
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d7

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1207
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d8

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1209
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d9

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1211
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_da

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1213
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_db

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1215
    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_dc

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1217
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_dd

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1219
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_de

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1221
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1225
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0296

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f0

    .line 1227
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1228
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16f9

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1230
    if-eqz v15, :cond_e0

    .line 1231
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1232
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e1

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1234
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e2

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1236
    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e3

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1238
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e4

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1240
    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e5

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1242
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e6

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1244
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e7

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1246
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e8

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1248
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e9

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1250
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ea

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1252
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_eb

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1254
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ec

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1256
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ed

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1258
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ee

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1260
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ef

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1262
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1266
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a025f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_101

    .line 1268
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a028b

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1269
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a028b

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1271
    if-eqz v15, :cond_f1

    .line 1272
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1273
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f2

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1275
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f3

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1277
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f4

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1279
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f5

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1281
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f6

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1283
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f7

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1285
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f8

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1287
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f9

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1289
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fa

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1291
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fb

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1293
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fc

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1295
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fd

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1297
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_fe

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1299
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ff

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1301
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_100

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1303
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1307
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a0298

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_112

    .line 1309
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a02a2

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1310
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fc

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1312
    if-eqz v15, :cond_102

    .line 1313
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1314
    :cond_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_103

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1316
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_104

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1318
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_105

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1320
    :cond_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_106

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1322
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_107

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1324
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_108

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1326
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_109

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1328
    :cond_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10a

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1330
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10b

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1332
    :cond_10b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10c

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1334
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10d

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1336
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10e

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1338
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10f

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1340
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_110

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1342
    :cond_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_111

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1344
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1348
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a026e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_126

    .line 1350
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a026e

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1351
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a026e

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_113

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_113

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1355
    :cond_113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_114

    const-string v25, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v26, "WATERCOLOUR"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_114

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1359
    :cond_114
    if-eqz v15, :cond_115

    .line 1360
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1361
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_116

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1363
    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_117

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1365
    :cond_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_118

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1367
    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_119

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1369
    :cond_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11a

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1371
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11b

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1373
    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11c

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1375
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11d

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1377
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11e

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1379
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_11f

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1381
    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_120

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1383
    :cond_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_121

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1385
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_122

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1387
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_123

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1389
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_124

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1391
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_125

    if-eqz v10, :cond_70

    .line 1392
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1395
    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a029d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_137

    .line 1397
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029d

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1398
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fa

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_127

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1402
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_128

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1404
    :cond_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_129

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1406
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12a

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1408
    :cond_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12b

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1410
    :cond_12b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12c

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1412
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12d

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1414
    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12e

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1416
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12f

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1418
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_130

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1421
    :cond_130
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v25

    if-eqz v25, :cond_136

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    const/high16 v26, 0x10000

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_131

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_131

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1432
    :cond_131
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_132

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1434
    :cond_132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_133

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1436
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_134

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1438
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_135

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1440
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1428
    :cond_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_131

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1c

    .line 1444
    :cond_137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a025a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_147

    .line 1446
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a025a

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1447
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fa

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_138

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1451
    :cond_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_139

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1453
    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13a

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1455
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13b

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1457
    :cond_13b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13c

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1459
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13d

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1461
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13e

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1463
    :cond_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13f

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1465
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_140

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1467
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_141

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1469
    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_142

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1471
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_143

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1473
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_144

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1475
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_145

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1477
    :cond_145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_146

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1479
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_70

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1483
    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move-object/from16 v25, v0

    const v26, 0x7f0a029e

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_70

    .line 1484
    const-string v25, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a029e

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(I)V

    .line 1485
    const-string v25, "lock_screen_options_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const v26, 0x7f0a16fb

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setTitle(I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_148

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1489
    :cond_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_149

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1491
    :cond_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14a

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1493
    :cond_14a
    if-eqz v15, :cond_14b

    .line 1494
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1495
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14c

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1497
    :cond_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14d

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1499
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14e

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1501
    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14f

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1503
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_150

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1505
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_151

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1507
    :cond_151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    if-eqz v25, :cond_152

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1509
    :cond_152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_153

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1511
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_154

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1513
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_155

    const-string v25, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_155

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1515
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_70

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_17

    .line 1601
    .end local v15    # "mImproveFace":Landroid/preference/Preference;
    .end local v24    # "vibrator":Landroid/os/Vibrator;
    .restart local v9    # "extra_bundle":Landroid/os/Bundle;
    .restart local v21    # "targetKey":Ljava/lang/String;
    :cond_156
    const/16 v23, 0x0

    goto/16 :goto_18

    .line 1607
    .restart local v23    # "value":Z
    :cond_157
    const-string v25, "dualclock_settings"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_158

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_92

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 1612
    :cond_158
    const-string v25, "safetyzone_settings"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_92

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_92

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_3
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_1
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_3
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 19
    .param p1, "maxTimeout"    # J

    .prologue
    .line 1771
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1772
    .local v4, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 1773
    .local v13, "values":[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    .local v8, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    .local v9, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "screen_off_timeout"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v2, v14

    .line 1779
    .local v2, "displayTimeout":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v14, v13

    if-ge v5, v14, :cond_1

    .line 1780
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1781
    .local v10, "timeout":J
    cmp-long v14, v10, p1

    if-gtz v14, :cond_0

    .line 1782
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1788
    .end local v10    # "timeout":J
    :cond_1
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "revisedValues.size() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v6, p1, v14

    .line 1790
    .local v6, "last_timeout":J
    const-string v14, "LockScreenMenu"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "last_timeout : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_2

    array-length v14, v13

    add-int/lit8 v14, v14, -0x1

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, p1, v14

    if-gez v14, :cond_2

    .line 1792
    const v14, 0x7f0a14ed

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1793
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1802
    .local v12, "userPreference":I
    int-to-long v14, v12

    cmp-long v14, v14, p1

    if-gtz v14, :cond_3

    .line 1803
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1812
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1814
    return-void

    .line 1805
    :cond_3
    const-string v14, "LockScreenMenu"

    const-string v15, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 1812
    :cond_4
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .param p1, "time"    # J

    .prologue
    .line 2978
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 2979
    .local v4, "second":J
    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 2980
    .local v0, "minute":J
    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    .line 2982
    const-string v2, ""

    .line 2983
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 2984
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

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

    .line 2986
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 2987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2989
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 2990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

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

    .line 2993
    :cond_2
    const-string v3, "LockScreenMenu"

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

    .line 2994
    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x0

    .line 3023
    const/4 v1, 0x0

    .line 3024
    .local v1, "values":[Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_1

    .line 3025
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 3031
    :goto_0
    if-nez v1, :cond_2

    .line 3037
    :cond_0
    :goto_1
    return v2

    .line 3027
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3033
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 3034
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 3033
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isRippleEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1846
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1847
    .local v0, "effect":I
    if-ne v0, v1, :cond_0

    .line 1850
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 2571
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1648
    const/4 v1, 0x1

    .line 1651
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1652
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    :goto_0
    return v1

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeUnsupportedEffect(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v2, "revisedUnlockEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v3, "revisedUnlockValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1630
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const v6, 0x7f0c0012

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 1632
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1633
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1635
    .local v4, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 1637
    aget-object v5, v4, v1

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1635
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1639
    :cond_0
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1643
    :cond_1
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1644
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1645
    return-void
.end method

.method private saveCameraShortcutSharedPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3126
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings.LockscreenMenuSettings.CameraShortcut"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3128
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3129
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "DoNotShowDialog"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3131
    return-void
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 1699
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1701
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1702
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1703
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1704
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 1706
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 1712
    iget-boolean v8, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v8, :cond_2

    .end local v0    # "adminTimeout":J
    :goto_1
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 1715
    :cond_0
    return-void

    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 1703
    goto :goto_0

    .line 1712
    .restart local v0    # "adminTimeout":J
    .restart local v4    # "displayTimeout":J
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .param p1, "isUpdate"    # Z

    .prologue
    .line 1817
    if-nez p1, :cond_0

    .line 1818
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0401e6

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 1819
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1822
    :cond_0
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getSignatureVerificationLevel()I

    move-result v1

    .line 1824
    .local v1, "currentLevel":I
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1826
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1827
    .local v2, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1829
    .local v7, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1830
    .local v0, "best":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 1831
    aget-object v8, v7, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1832
    .local v4, "level":J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 1833
    move v0, v3

    .line 1830
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1837
    .end local v4    # "level":J
    :cond_2
    aget-object v8, v2, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1838
    .local v6, "levelString":Ljava/lang/String;
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get signature verification level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v8, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0a151c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1843
    return-void
.end method

.method private showCameraShortcutGuidePopup()V
    .locals 7

    .prologue
    .line 3135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3136
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 3138
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040086

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3139
    .local v3, "layout":Landroid/view/View;
    const v5, 0x7f10016b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3140
    .local v4, "message":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3141
    const v5, 0x7f0a0f8b

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3144
    :goto_0
    const v5, 0x7f10016c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3145
    .local v1, "check":Landroid/widget/CheckBox;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3146
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3147
    const v5, 0x7f0a15b1

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3149
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$13;

    invoke-direct {v6, p0}, Lcom/android/settings/LockscreenMenuSettings$13;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3155
    new-instance v5, Lcom/android/settings/LockscreenMenuSettings$14;

    invoke-direct {v5, p0}, Lcom/android/settings/LockscreenMenuSettings$14;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3161
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/LockscreenMenuSettings$15;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/LockscreenMenuSettings$15;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3169
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3170
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3171
    return-void

    .line 3143
    .end local v1    # "check":Landroid/widget/CheckBox;
    :cond_0
    const v5, 0x7f0a0f8c

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 2908
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a1064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$11;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$10;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2929
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2933
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2935
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2936
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 2937
    iput-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2940
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 2941
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040084

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2942
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f100075

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2944
    .local v3, "message":Landroid/widget/TextView;
    const v4, 0x7f0a1063

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2945
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2946
    const v4, 0x7f0a105d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2947
    const v4, 0x7f0a08f4

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 2949
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2950
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/LockscreenMenuSettings$12;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$12;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2968
    return-void
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 2508
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2509
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2510
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2511
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2512
    return-void
.end method

.method private updateClockSizeSummaryK()V
    .locals 5

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2516
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2517
    .local v0, "State":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2518
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1721
    .local v6, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1722
    .local v5, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 1723
    .local v15, "values":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1724
    .local v4, "best":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 1725
    aget-object v18, v15, v10

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1726
    .local v16, "timeout":J
    cmp-long v18, v6, v16

    if-ltz v18, :cond_0

    .line 1727
    move v4, v10

    .line 1724
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1732
    .end local v16    # "timeout":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 1733
    .local v2, "adminTimeout":J
    :goto_1
    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "screen_off_timeout"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .line 1735
    .local v8, "displayTimeout":J
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .end local v2    # "adminTimeout":J
    :goto_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1739
    .local v12, "maxTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v14, 0x7f0a008d

    .line 1740
    .local v14, "summaryResID":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const v11, 0x7f0a008e

    .line 1743
    .local v11, "immeResID":I
    :goto_4
    aget-object v18, v15, v4

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v12

    if-gez v18, :cond_7

    cmp-long v18, v12, v6

    if-gez v18, :cond_7

    .line 1744
    const-string v18, "LockScreenMenu"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    cmp-long v18, v12, v8

    if-gez v18, :cond_6

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1768
    :goto_5
    return-void

    .line 1732
    .end local v8    # "displayTimeout":J
    .end local v11    # "immeResID":I
    .end local v12    # "maxTimeout":J
    .end local v14    # "summaryResID":I
    :cond_2
    const-wide/16 v2, 0x0

    goto/16 :goto_1

    .line 1735
    .restart local v2    # "adminTimeout":J
    .restart local v8    # "displayTimeout":J
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 1739
    .end local v2    # "adminTimeout":J
    .restart local v12    # "maxTimeout":J
    :cond_4
    const v14, 0x7f0a0211

    goto :goto_3

    .line 1740
    .restart local v14    # "summaryResID":I
    :cond_5
    const v11, 0x7f0a14ec

    goto :goto_4

    .line 1749
    .restart local v11    # "immeResID":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1754
    :cond_7
    if-nez v4, :cond_8

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    aget-object v19, v15, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 1758
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_a

    cmp-long v18, v6, v12

    if-ltz v18, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 1759
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v5, v4

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1761
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private updatePatternTypeSummary()V
    .locals 2

    .prologue
    .line 2521
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2522
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2523
    return-void
.end method

.method private updatePatternTypeSummaryK()V
    .locals 7

    .prologue
    .line 2526
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2527
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2528
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_pattern_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2529
    .local v0, "State":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2530
    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2531
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2533
    :cond_1
    return-void
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 2894
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2895
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 2897
    .local v3, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2898
    .local v0, "State":I
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2900
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 2901
    aget-object v4, v3, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 2902
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2900
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2905
    :cond_1
    return-void
.end method

.method private updateSetSchortcutsMenu()V
    .locals 8

    .prologue
    .line 3048
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3049
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 3050
    .local v4, "values":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "set_shortcuts_mode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3052
    .local v2, "mode":I
    const/4 v3, 0x0

    .line 3053
    .local v3, "setShortcuts":Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "set_shortcuts"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "setShortcuts":Landroid/preference/ListPreference;
    check-cast v3, Landroid/preference/ListPreference;

    .line 3056
    .restart local v3    # "setShortcuts":Landroid/preference/ListPreference;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    .line 3057
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    .line 3058
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 3064
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 3065
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 3066
    aget-object v5, v4, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 3067
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3071
    :cond_1
    return-void

    .line 3060
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFavoriteApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 3065
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeSwitchForOnlyWeatherOnAddInfo(Z)V
    .locals 5
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3096
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_info"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3097
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_additional_weather"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3098
    return-void

    :cond_0
    move v0, v2

    .line 3096
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3097
    goto :goto_1
.end method

.method protected isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2545
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2547
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 2554
    .end local v0    # "enable":I
    :cond_0
    :goto_0
    return v2

    .line 2551
    .restart local v0    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2553
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 2554
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method protected makeDisablePopup(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2537
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2539
    const-string v1, "app_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2540
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2541
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1663
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1664
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenMenuSettings$5;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1688
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->setHasOptionsMenu(Z)V

    .line 1690
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2621
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2622
    const/16 v2, 0x7c

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 2624
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2626
    :cond_1
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_2

    if-ne p2, v3, :cond_2

    .line 2628
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 2629
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 2630
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2631
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2636
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "WATERCOLOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "BLIND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "POPPINGCOLOURS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2650
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_5

    .line 2652
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2653
    .local v1, "nUnlockeffect":I
    if-eq v1, v5, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2657
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2658
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2664
    .end local v1    # "nUnlockeffect":I
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3045
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 327
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 328
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 331
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 333
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 335
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 338
    .local v0, "activity":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 339
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 342
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 348
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 349
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 351
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 2576
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2578
    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    const/4 v0, 0x1

    const v1, 0x7f0a1653

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2584
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1694
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1695
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2588
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2612
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 2590
    :pswitch_0
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2591
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2592
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "helphub:appid"

    const-string v3, "lock_screen"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2595
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2596
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2597
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "Activity not found do not anyting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2600
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2602
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "helphub:section"

    const-string v3, "unlock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2604
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2605
    :catch_1
    move-exception v0

    .line 2606
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockScreenMenu"

    const-string v3, "Activity not found do not anyting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2588
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2348
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 2349
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2351
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2353
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mUnlockEffect dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2357
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2360
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2361
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mPatternType dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_2
    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    .prologue
    const/16 v3, 0x41

    .line 3101
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 3102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 3103
    .local v1, "mUserId":I
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 3104
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 3106
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3108
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 3109
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 3114
    .end local v0    # "info":Ljava/lang/String;
    .end local v1    # "mUserId":I
    :cond_1
    :goto_0
    return-void

    .line 3111
    .restart local v0    # "info":Ljava/lang/String;
    .restart local v1    # "mUserId":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 29
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v24, p2

    .line 2669
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 2671
    .local v23, "timeout":I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_after_timeout_rollback"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2678
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_lock_after_timeout"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2684
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "screen_off_timeout"

    const-wide/16 v26, 0x7530

    invoke-static/range {v24 .. v27}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 2686
    .local v6, "currentScreenTimeout":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    if-eqz v23, :cond_0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v24, v6

    if-gez v24, :cond_0

    .line 2687
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 2690
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 2827
    .end local v6    # "currentScreenTimeout":J
    .end local v23    # "timeout":I
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 2828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 2829
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_20

    const/16 v21, 0x1

    .line 2830
    .local v21, "setValue":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "my_profile_enabled"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2831
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2847
    .end local v21    # "setValue":I
    :cond_2
    :goto_4
    const/16 v24, 0x1

    return v24

    .line 2674
    .restart local v23    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const v23, 0x1b7741

    goto :goto_0

    .line 2680
    :catch_0
    move-exception v9

    .line 2681
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v24, "SecuritySettings"

    const-string v25, "could not persist lockAfter timeout setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2691
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v23    # "timeout":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v24, p2

    .line 2692
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2694
    .local v14, "level":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/LockPatternUtils;->setSignatureVerificationLevel(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2699
    :goto_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto/16 :goto_2

    .line 2695
    :catch_1
    move-exception v9

    .line 2696
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v24, "SecuritySettings"

    const-string v25, "could not persist signature verification level setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2700
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "level":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 2701
    const-string v24, "oversea"

    const-string v25, "ril.currentplmn"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2702
    .local v13, "isRoamingArea":Z
    if-nez v13, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2703
    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2704
    .local v15, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v24, 0x7f0a1378

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2705
    const v24, 0x7f0a1a22

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2706
    const v24, 0x104000a

    new-instance v25, Lcom/android/settings/LockscreenMenuSettings$7;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings$7;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2712
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 2714
    .end local v15    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "dualclock_menu_settings"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_7

    const/16 v24, 0x1

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_7
    const/16 v24, 0x0

    goto :goto_6

    .line 2716
    .end local v13    # "isRoamingArea":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 2717
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_clock_size"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2718
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummary()V

    goto/16 :goto_2

    .line 2719
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_a

    move-object/from16 v24, p2

    .line 2720
    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 2722
    .local v16, "numValue":I
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_pattern_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2727
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummary()V

    goto/16 :goto_2

    .line 2724
    :catch_2
    move-exception v9

    .line 2725
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string v24, "LockScreenMenu"

    const-string v25, "could not persist Pattern type setting"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2728
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "numValue":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v24, p2

    .line 2729
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2731
    .local v5, "checked":Z
    if-eqz v5, :cond_d

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "safetyzone_settings"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2733
    .local v4, "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_1

    .line 2734
    const/4 v8, 0x0

    .line 2735
    .local v8, "doNotShow":Z
    const-string v24, "DoNotShowDialogOn"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2736
    if-nez v8, :cond_b

    .line 2737
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 2739
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_list"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2740
    .local v17, "safety_zone_list":Ljava/lang/String;
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2741
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 2743
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_enable"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2747
    .end local v4    # "ReverbSharedPrefs":Landroid/content/SharedPreferences;
    .end local v8    # "doNotShow":Z
    .end local v17    # "safety_zone_list":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "safety_zone_enable"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_f

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const v25, 0x7f0a1066

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "safety_zone_enable"

    if-eqz v5, :cond_e

    const/16 v24, 0x1

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_e
    const/16 v24, 0x0

    goto :goto_8

    .line 2751
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "safety_zone_enable"

    if-eqz v5, :cond_10

    const/16 v24, 0x1

    :goto_9
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    const/16 v24, 0x0

    goto :goto_9

    .line 2753
    .end local v5    # "checked":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lockscreen_ripple_effect"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2755
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2758
    :cond_12
    const-string v25, "LockScreenMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " LockScreen : lockscreen_ripple_effect :"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2759
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_14

    .line 2760
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "set_shortcuts_mode"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2761
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 2762
    const-string v25, "LockScreenMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " SET_SHORTCUTS_MODE :"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2763
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    move-object/from16 v24, p2

    .line 2764
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2765
    .restart local v5    # "checked":Z
    if-eqz v5, :cond_15

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_fingerprint_shortcut"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2768
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_fingerprint_shortcut"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2769
    .end local v5    # "checked":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_17

    move-object/from16 v24, p2

    .line 2770
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2781
    .restart local v5    # "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_card_enabled"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 2784
    .end local v5    # "checked":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 2786
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v19, v24

    .line 2787
    .local v19, "selectionArgs_widgetView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v26, "isLockScreenViewAllowed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2788
    .local v12, "isLockScreenViewAllowed_widgetView":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v12, v0, :cond_18

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_1

    :cond_18
    move-object/from16 v24, p2

    .line 2791
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v21, 0x1

    .restart local v21    # "setValue":I
    :goto_a
    move-object/from16 v24, p2

    .line 2792
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1b

    const/16 v20, 0x2

    .line 2793
    .local v20, "setNewValue":I
    :goto_b
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 2794
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "set_shortcuts_mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2796
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "lock_screen_shortcut"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2797
    new-instance v10, Landroid/content/Intent;

    const-string v24, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2798
    .local v10, "intent":Landroid/content/Intent;
    const-string v25, "isEnable"

    move-object/from16 v24, p2

    check-cast v24, Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2799
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2801
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-eqz v24, :cond_1

    .line 2802
    new-instance v22, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;-><init>(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 2803
    .local v22, "shortcutListMgr":Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;->InitShortcutList(Ljava/lang/String;)Z

    goto/16 :goto_2

    .line 2791
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "setNewValue":I
    .end local v21    # "setValue":I
    .end local v22    # "shortcutListMgr":Lcom/android/settings/lockscreenshortcut/LockScreenShortcutListManager;
    :cond_1a
    const/16 v21, 0x0

    goto :goto_a

    .line 2792
    .restart local v21    # "setValue":I
    :cond_1b
    const/16 v20, 0x0

    goto :goto_b

    .line 2808
    .end local v12    # "isLockScreenViewAllowed_widgetView":I
    .end local v19    # "selectionArgs_widgetView":[Ljava/lang/String;
    .end local v21    # "setValue":I
    :cond_1c
    const-string v24, "multiple_lock_screen"

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 2810
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v24, 0x0

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v18, v24

    .line 2811
    .local v18, "selectionArgs_shortcutView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-string v25, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v26, "isLockScreenViewAllowed"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 2813
    .local v11, "isLockScreenViewAllowed_shortcutView":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v11, v0, :cond_1d

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_1

    :cond_1d
    move-object/from16 v24, p2

    .line 2816
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1e

    const/16 v21, 0x1

    .line 2817
    .restart local v21    # "setValue":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "kg_multiple_lockscreen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2818
    const-string v24, "LockScreenMenu"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Multiple lock screen : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "kg_multiple_lockscreen"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2816
    .end local v21    # "setValue":I
    :cond_1e
    const/16 v21, 0x0

    goto :goto_c

    .line 2822
    .end local v11    # "isLockScreenViewAllowed_shortcutView":I
    .end local v18    # "selectionArgs_shortcutView":[Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 2823
    const-string v24, "LockScreenMenu"

    const-string v25, "onPreferenceChange, mMotionCameraShortCut"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, p2

    .line 2824
    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setMotionCameraShortCut(Z)V

    goto/16 :goto_2

    .line 2829
    .end local p2    # "value":Ljava/lang/Object;
    :cond_20
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2835
    .restart local v21    # "setValue":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    .line 2838
    .end local v21    # "setValue":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 2839
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_23

    const/16 v21, 0x1

    .line 2840
    .restart local v21    # "setValue":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "wake_up_lock_screen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2839
    .end local v21    # "setValue":I
    :cond_23
    const/16 v21, 0x0

    goto :goto_d

    .line 2841
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2842
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_25

    const/16 v21, 0x1

    .line 2843
    .restart local v21    # "setValue":I
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "kg_multiple_lockscreen"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 2842
    .end local v21    # "setValue":I
    :cond_25
    const/16 v21, 0x0

    goto :goto_e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 22
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2367
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 2369
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    .line 2370
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2371
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/16 v21, 0x1

    .local v21, "value":Z
    :goto_0
    move-object/from16 v9, p2

    .line 2372
    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 2373
    .local v9, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2374
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2380
    .end local v9    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    .end local v21    # "value":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v12, 0x0

    .line 2381
    .local v12, "isLiveWallpaper":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 2382
    .local v13, "isMotionLock":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 2384
    .local v18, "mInkEffectColor":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v16

    .line 2385
    .local v16, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2386
    const-string v4, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f0a024a

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2504
    :cond_1
    :goto_2
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_3
    return v3

    .line 2371
    .end local v12    # "isLiveWallpaper":Z
    .end local v13    # "isMotionLock":I
    .end local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v18    # "mInkEffectColor":I
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 2380
    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    .line 2389
    .restart local v12    # "isLiveWallpaper":Z
    .restart local v13    # "isMotionLock":I
    .restart local v16    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "mInkEffectColor":I
    :cond_4
    const-string v3, "biometric_weak_improve_matching"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2390
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v10, v3, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2392
    .local v10, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_2

    .line 2400
    .end local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_5
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2401
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2402
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_2

    .line 2407
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2408
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v10, v3, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 2410
    .restart local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v4, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2416
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    .line 2420
    .end local v10    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_7
    const-string v3, "lockenabled"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2421
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto/16 :goto_2

    .line 2422
    :cond_8
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2423
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_2

    .line 2424
    :cond_9
    const-string v3, "vibration_feedback"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2425
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_vibration_feedback"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 2426
    :cond_b
    const-string v3, "quick_note"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2427
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_quick_note"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 2428
    :cond_d
    const-string v3, "visiblesignature"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2429
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_2

    .line 2430
    :cond_e
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2432
    const-string v3, "lock_screen_camera_shortcut"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->checkCameraShortcutGuidePopupAvailable()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->hasCoverStyleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getSviewCoverAppLevel(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getSviewCoverAppLevel(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getModelOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    .line 2437
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showCameraShortcutGuidePopup()V

    goto/16 :goto_2

    .line 2439
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "set_shortcuts_mode"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    :goto_6
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x0

    goto :goto_6

    .line 2440
    :cond_11
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2441
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_2

    .line 2442
    :cond_12
    const-string v3, "keyguard_enable_widgets"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setWidgetsEnabled(Z)V

    goto/16 :goto_2

    .line 2444
    :cond_13
    const-string v3, "owner_info_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_14

    .line 2445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_2

    .line 2446
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1

    .line 2448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 2449
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_16
    const/4 v3, 0x0

    goto :goto_7

    .line 2451
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_unlock_camera_short_cut"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_18
    const/4 v3, 0x0

    goto :goto_8

    .line 2453
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1a
    const/4 v3, 0x0

    goto :goto_9

    .line 2455
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1c
    const/4 v3, 0x0

    goto :goto_a

    .line 2457
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2458
    const-string v3, "oversea"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 2459
    .local v14, "isRoamingArea":Z
    if-nez v14, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2460
    new-instance v17, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2461
    .local v17, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a1378

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2462
    const v3, 0x7f0a1a22

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2463
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/LockscreenMenuSettings$6;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2468
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2469
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 2471
    .end local v14    # "isRoamingArea":Z
    .end local v17    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2472
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_date_and_year"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    :goto_b
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1f
    const/4 v3, 0x0

    goto :goto_b

    .line 2473
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2474
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 2475
    .local v11, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2476
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.InkeffectPreviewTablet"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2477
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2479
    :cond_21
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings.InkeffectPreview"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2480
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2484
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2485
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_swipe_main_user"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    :goto_c
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_23
    const/4 v3, 0x0

    goto :goto_c

    .line 2486
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2487
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    .line 2488
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 2489
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-string v3, "com.android.settings.MagazineCard"

    const/4 v4, 0x0

    const v5, 0x7f0a1727

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_2

    .line 2491
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2492
    const-string v20, "com.vlingo.midas"

    .line 2493
    .local v20, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/LockscreenMenuSettings;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2494
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_SETTING_SET_WAKEUP_COMMAND"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2495
    .local v19, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2497
    .end local v19    # "mIntent":Landroid/content/Intent;
    :cond_26
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->makeDisablePopup(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2499
    .end local v20    # "pkgName":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->changeSwitchForOnlyWeatherOnAddInfo(Z)V

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 39

    .prologue
    .line 1859
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v35, v0

    .line 1860
    .local v35, "super_mOpenDetailMenu":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1862
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1866
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 1868
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v30

    .line 1869
    .local v30, "mUserId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v10

    .line 1870
    .local v10, "info":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 1871
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x41

    if-le v2, v3, :cond_0

    .line 1872
    const/4 v2, 0x0

    const/16 v3, 0x41

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1874
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 1875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1880
    .end local v10    # "info":Ljava/lang/String;
    .end local v30    # "mUserId":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v25

    .line 1881
    .local v25, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1885
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 1886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1888
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 1889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mVibrationFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_vibration_feedback"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1891
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 1892
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_quick_note"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1894
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 1895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "auto_swipe_main_user"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_38

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1902
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7

    .line 1903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1905
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_8

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1908
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9

    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1910
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0a18b1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1915
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mEnableKeyguardWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1919
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_wallpaper"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    const/4 v15, 0x0

    .line 1920
    .local v15, "isLiveWallpaper":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_motion_tilt_to_unlock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 1921
    .local v20, "isMotionLock":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1924
    .local v27, "mInkEffectColor":I
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v2

    .line 1925
    .local v34, "selectionArgs_widgetView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenViewAllowed"

    move-object/from16 v0, v34

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1926
    .local v18, "isLockScreenViewAllowed_widgetView":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_3a

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1946
    :cond_b
    :goto_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v33, v2

    .line 1947
    .local v33, "selectionArgs_shortcutView":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenViewAllowed"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1948
    .local v17, "isLockScreenViewAllowed_shortcutView":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_3d

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_c

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1968
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_d

    .line 1969
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "set_shortcuts_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1982
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1983
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mCameraShortcut:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1990
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "my_profile_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    .line 1991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->isMyprofile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_e

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2000
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_13

    .line 2001
    if-nez v15, :cond_f

    if-lez v20, :cond_44

    .line 2002
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 2021
    :goto_a
    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "WATERCOLOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "BLIND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v3, "POPPINGCOLOURS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2035
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_12

    .line 2037
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 2038
    .local v31, "nUnlockeffect":I
    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_11

    const/4 v2, 0x5

    move/from16 v0, v31

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    move/from16 v0, v31

    if-ne v0, v2, :cond_12

    .line 2042
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2043
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2048
    .end local v31    # "nUnlockeffect":I
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 2050
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_15

    .line 2051
    const/16 v2, 0xd

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2053
    .local v28, "mModeItem":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_zoom_panning_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 2055
    .local v24, "isZoomPanningEffect":I
    if-nez v15, :cond_14

    if-gtz v20, :cond_14

    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_4b

    .line 2056
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2078
    :goto_b
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2079
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2080
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2081
    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2082
    const/4 v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2083
    const/4 v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bfd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2084
    const/4 v2, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a16a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2085
    const/4 v2, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1bff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2086
    const/16 v2, 0x8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c01

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2087
    const/16 v2, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2088
    const/16 v2, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0fb7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2089
    const/16 v2, 0xb

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2090
    const/16 v2, 0xc

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1c04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2093
    .local v8, "State":I
    const-string v2, "2"

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "1.5"

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2117
    .end local v8    # "State":I
    .end local v24    # "isZoomPanningEffect":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_16

    .line 2118
    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 2120
    .restart local v28    # "mModeItem":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2121
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2122
    const/4 v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d19

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2123
    const/4 v2, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2124
    const/4 v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2125
    const/4 v2, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d25

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v28, v2

    .line 2126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_charging_effect"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2127
    .restart local v8    # "State":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mChargingEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2129
    .end local v8    # "State":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 2130
    .local v26, "mClockSizeValue":I
    const-string v2, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mClockSizeValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v2, :cond_17

    .line 2132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2134
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummary()V

    .line 2136
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockSize_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_18

    .line 2137
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateClockSizeSummaryK()V

    .line 2140
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_pattern_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 2141
    .local v29, "mPatternTypeValue":I
    const-string v2, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPatternTypeValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    if-eqz v2, :cond_19

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType:Landroid/preference/ListPreference;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2145
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummary()V

    .line 2148
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mPatternType_with_preview:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1a

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updatePatternTypeSummaryK()V

    .line 2152
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1d

    .line 2153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->isRippleEffect()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2154
    if-nez v15, :cond_1b

    if-lez v20, :cond_1c

    .line 2155
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2157
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    aget v4, v4, v27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 2163
    :cond_1d
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1e

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2165
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2166
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2173
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_1f

    .line 2174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMotionCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_55

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2176
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_20

    .line 2177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "automatic_unlock"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2180
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_21

    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_57

    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_58

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2185
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_22

    .line 2186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_59

    const/4 v2, 0x1

    :goto_13
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2189
    :cond_22
    const/16 v36, 0x1

    .line 2190
    .local v36, "svoice_state":Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/4 v2, 0x0

    const-string v3, "false"

    aput-object v3, v32, v2

    .line 2192
    .local v32, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSVoiceAllowed"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 2193
    .local v23, "isSVoiceAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isMicrophoneEnabled"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 2194
    .local v19, "isMicrophoneEnabled":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_23

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_23

    .line 2195
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_5a

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5a

    const/16 v36, 0x1

    .line 2197
    :cond_23
    :goto_14
    if-nez v36, :cond_25

    .line 2198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_24

    .line 2199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2200
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_25

    .line 2201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2207
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5b

    .line 2208
    const-string v4, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f0a024a

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 2210
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 2220
    :cond_26
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSetShortcuts:Landroid/preference/ListPreference;

    if-eqz v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2221
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->updateSetSchortcutsMenu()V

    .line 2225
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v4, "isLockScreenEnabled"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 2226
    .local v16, "isLockScreenEnabled":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_28

    if-nez v16, :cond_28

    .line 2227
    const-string v2, "LockScreenMenu"

    const-string v3, "onResume(): isLockScreenEnabled = false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    .line 2231
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "safety_zone_enable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2235
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2237
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5c

    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5c

    .line 2239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_29

    .line 2240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2254
    :cond_29
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2a

    .line 2255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "kg_multiple_lockscreen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    :goto_17
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2259
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2b

    .line 2260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mClockWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    :goto_18
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 2263
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2c

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "my_profile_enabled"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_62

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2269
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2d

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMagazineCard:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2273
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2e

    .line 2274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_63

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_64

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2279
    :cond_2e
    if-nez v36, :cond_2f

    .line 2280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2f

    .line 2281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 2284
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_66

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_additional_info"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_65

    const v2, 0x7f0a0a5e

    :goto_1d
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 2300
    :cond_30
    :goto_1e
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 2301
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_33

    .line 2302
    sget v2, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 2303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 2304
    .local v9, "extra_bundle":Landroid/os/Bundle;
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 2305
    .local v37, "targetKey":Ljava/lang/String;
    sget v2, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6a

    const/16 v38, 0x1

    .line 2306
    .local v38, "value":Z
    :goto_1f
    const-string v2, "multiple_lock_screenswitch"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_31

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2313
    :cond_31
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    .line 2339
    :cond_32
    :goto_20
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 2342
    .end local v9    # "extra_bundle":Landroid/os/Bundle;
    .end local v37    # "targetKey":Ljava/lang/String;
    .end local v38    # "value":Z
    :cond_33
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 2344
    return-void

    .line 1877
    .end local v15    # "isLiveWallpaper":Z
    .end local v16    # "isLockScreenEnabled":I
    .end local v17    # "isLockScreenViewAllowed_shortcutView":I
    .end local v18    # "isLockScreenViewAllowed_widgetView":I
    .end local v19    # "isMicrophoneEnabled":I
    .end local v20    # "isMotionLock":I
    .end local v23    # "isSVoiceAllowed":I
    .end local v25    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v26    # "mClockSizeValue":I
    .end local v27    # "mInkEffectColor":I
    .end local v29    # "mPatternTypeValue":I
    .end local v32    # "selectionArgs":[Ljava/lang/String;
    .end local v33    # "selectionArgs_shortcutView":[Ljava/lang/String;
    .end local v34    # "selectionArgs_widgetView":[Ljava/lang/String;
    .end local v36    # "svoice_state":Z
    .restart local v10    # "info":Ljava/lang/String;
    .restart local v30    # "mUserId":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0217

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1889
    .end local v10    # "info":Ljava/lang/String;
    .end local v30    # "mUserId":I
    .restart local v25    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_35
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1892
    :cond_36
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1895
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1900
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1919
    :cond_39
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 1934
    .restart local v15    # "isLiveWallpaper":Z
    .restart local v18    # "isLockScreenViewAllowed_widgetView":I
    .restart local v20    # "isMotionLock":I
    .restart local v27    # "mInkEffectColor":I
    .restart local v34    # "selectionArgs_widgetView":[Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    const/16 v21, 0x1

    .line 1936
    .local v21, "isMultiple":Z
    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    const/4 v2, 0x1

    :goto_22
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1934
    .end local v21    # "isMultiple":Z
    :cond_3b
    const/16 v21, 0x0

    goto :goto_21

    .line 1938
    .restart local v21    # "isMultiple":Z
    :cond_3c
    const/4 v2, 0x0

    goto :goto_22

    .line 1956
    .end local v21    # "isMultiple":Z
    .restart local v17    # "isLockScreenViewAllowed_shortcutView":I
    .restart local v33    # "selectionArgs_shortcutView":[Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_c

    .line 1957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_shortcut"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    :goto_23
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1958
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1959
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    const/4 v2, 0x1

    :goto_24
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1957
    :cond_3e
    const/4 v2, 0x0

    goto :goto_23

    .line 1959
    :cond_3f
    const/4 v2, 0x0

    goto :goto_24

    .line 1961
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_41

    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x1

    :goto_25
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_41
    const/4 v2, 0x0

    goto :goto_25

    .line 1969
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1997
    :cond_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_e

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfo:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_9

    .line 2004
    :cond_44
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2005
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_home_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_47

    const/4 v14, 0x1

    .line 2006
    .local v14, "isFestivalLockEnabled":Z
    :goto_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_48

    const/4 v13, 0x1

    .line 2008
    .local v13, "isFestivalEnabled":Z
    :goto_27
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isJpnFestivalToday(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    if-eqz v14, :cond_45

    if-nez v13, :cond_46

    :cond_45
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2012
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 2005
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_47
    const/4 v14, 0x0

    goto :goto_26

    .line 2006
    .restart local v14    # "isFestivalLockEnabled":Z
    :cond_48
    const/4 v13, 0x0

    goto :goto_27

    .line 2014
    .restart local v13    # "isFestivalEnabled":Z
    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 2017
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 2059
    .restart local v24    # "isZoomPanningEffect":I
    .restart local v28    # "mModeItem":[Ljava/lang/String;
    :cond_4b
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_home_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v14, 0x1

    .line 2061
    .restart local v14    # "isFestivalLockEnabled":Z
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "festival_effect_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v13, 0x1

    .line 2063
    .restart local v13    # "isFestivalEnabled":Z
    :goto_29
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isJpnFestivalToday(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v14, :cond_4c

    if-nez v13, :cond_4d

    :cond_4c
    sget-object v2, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2067
    :cond_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2060
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_4e
    const/4 v14, 0x0

    goto :goto_28

    .line 2061
    .restart local v14    # "isFestivalLockEnabled":Z
    :cond_4f
    const/4 v13, 0x0

    goto :goto_29

    .line 2069
    .restart local v13    # "isFestivalEnabled":Z
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2072
    .end local v13    # "isFestivalEnabled":Z
    .end local v14    # "isFestivalLockEnabled":Z
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 2096
    .restart local v8    # "State":I
    :cond_52
    packed-switch v8, :pswitch_data_0

    .line 2113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    aget-object v3, v28, v8

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2098
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2101
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d19

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2104
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2107
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d1b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2110
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect_with_preview:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1d25

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 2160
    .end local v8    # "State":I
    .end local v24    # "isZoomPanningEffect":I
    .end local v28    # "mModeItem":[Ljava/lang/String;
    .restart local v26    # "mClockSizeValue":I
    .restart local v29    # "mPatternTypeValue":I
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v4, v4, v27

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 2164
    :cond_54
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 2174
    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 2177
    :cond_56
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 2181
    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 2182
    :cond_58
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 2186
    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 2195
    .restart local v19    # "isMicrophoneEnabled":I
    .restart local v23    # "isSVoiceAllowed":I
    .restart local v32    # "selectionArgs":[Ljava/lang/String;
    .restart local v36    # "svoice_state":Z
    :cond_5a
    const/16 v36, 0x0

    goto/16 :goto_14

    .line 2211
    :cond_5b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    .line 2216
    const-string v2, "LockScreenMenu"

    const-string v3, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    goto/16 :goto_15

    .line 2245
    .restart local v16    # "isLockScreenEnabled":I
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5d

    const/16 v22, 0x1

    .line 2247
    .local v22, "isMultipleEnable":Z
    :goto_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_29

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5e

    const/4 v2, 0x1

    :goto_2b
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_16

    .line 2245
    .end local v22    # "isMultipleEnable":Z
    :cond_5d
    const/16 v22, 0x0

    goto :goto_2a

    .line 2249
    .restart local v22    # "isMultipleEnable":Z
    :cond_5e
    const/4 v2, 0x0

    goto :goto_2b

    .line 2256
    .end local v22    # "isMultipleEnable":Z
    :cond_5f
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 2260
    :cond_60
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 2265
    :cond_61
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 2266
    :cond_62
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 2275
    :cond_63
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 2276
    :cond_64
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 2285
    :cond_65
    const v2, 0x7f0a0a5f

    goto/16 :goto_1d

    .line 2287
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_30

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_info"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_67

    const/4 v12, 0x1

    .line 2289
    .local v12, "isCheckedMasterSwitchAddInfo":Z
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_weather"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    const/4 v11, 0x1

    .line 2290
    .local v11, "isCheckedForWeather":Z
    :goto_2d
    const/4 v2, 0x1

    if-ne v12, v2, :cond_69

    const/4 v2, 0x1

    if-ne v11, v2, :cond_69

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1e

    .line 2288
    .end local v11    # "isCheckedForWeather":Z
    .end local v12    # "isCheckedMasterSwitchAddInfo":Z
    :cond_67
    const/4 v12, 0x0

    goto :goto_2c

    .line 2289
    .restart local v12    # "isCheckedMasterSwitchAddInfo":Z
    :cond_68
    const/4 v11, 0x0

    goto :goto_2d

    .line 2293
    .restart local v11    # "isCheckedForWeather":Z
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mAdditionalInfoForWeather:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1e

    .line 2305
    .end local v11    # "isCheckedForWeather":Z
    .end local v12    # "isCheckedMasterSwitchAddInfo":Z
    .restart local v9    # "extra_bundle":Landroid/os/Bundle;
    .restart local v37    # "targetKey":Ljava/lang/String;
    :cond_6a
    const/16 v38, 0x0

    goto/16 :goto_1f

    .line 2314
    .restart local v38    # "value":Z
    :cond_6b
    const-string v2, "lock_screen_shortcut_menu"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_6c

    .line 2316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2321
    :cond_6c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_20

    .line 2322
    :cond_6d
    const-string v2, "lock_screen_myprofile_settings"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 2323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_6e

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2329
    :cond_6e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_20

    .line 2330
    :cond_6f
    const-string v2, "lock_screen_wakeup_settings"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_70

    .line 2332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    move/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 2337
    :cond_70
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/LockscreenMenuSettings;->mOpenDetailMenu:Z

    goto/16 :goto_20

    .line 2096
    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setMotionCameraShortCut(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2852
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2853
    .local v0, "int_value":I
    :goto_0
    if-eqz p1, :cond_3

    .line 2854
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2855
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2884
    :goto_1
    return-void

    .end local v0    # "int_value":I
    :cond_0
    move v0, v1

    .line 2852
    goto :goto_0

    .line 2857
    .restart local v0    # "int_value":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 2858
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2859
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 2862
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1210

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a11a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a08f4

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$8;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$8;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01ce

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 2875
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$9;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 2882
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public showDeviceLockDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3000
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3002
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 3003
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 3004
    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 3007
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 3008
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04018d

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3009
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f1003b3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3010
    .local v3, "tv":Landroid/widget/TextView;
    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3012
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3013
    const v4, 0x7f0a06b5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3014
    const v4, 0x104000a

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3016
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 3017
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 3018
    return-void
.end method

.method showDialog()V
    .locals 4

    .prologue
    .line 2559
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/OwnerInfoSettings;

    .line 2560
    .local v1, "oldFrag":Lcom/android/settings/OwnerInfoSettings;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2561
    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2568
    :goto_0
    return-void

    .line 2565
    :cond_0
    const v2, 0x7f0a0214

    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 2566
    .local v0, "newFragment":Lcom/android/settings/OwnerInfoSettings;
    invoke-virtual {v0, p0}, Lcom/android/settings/OwnerInfoSettings;->setDialogFragmentListener(Lcom/android/settings/OwnerInfoSettings$DialogFragmentListener;)V

    .line 2567
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/OwnerInfoSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 2971
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2972
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2973
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 2974
    return-void
.end method
