.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings/SecuritySettings$PWState;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private ChangingSIMAlert:Landroid/preference/Preference;

.field private RemoteControls:Landroid/preference/Preference;

.field private isKioskContainer:Z

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClickedTrustAgentPreference:Landroid/preference/Preference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockMyMobile:Landroid/preference/CheckBoxPreference;

.field private mLockMyMobileObserver:Landroid/database/ContentObserver;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPWState:Lcom/android/settings/SecuritySettings$PWState;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mSecurityPolicyUpdates:Landroid/preference/Preference;

.field private mSecurityReports:Landroid/preference/CheckBoxPreference;

.field private mSecurityUpdatesMA:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field mSimCdma:Landroid/telephony/TelephonyManager;

.field mSimGsm:Landroid/telephony/TelephonyManager;

.field private mSimLockPreferences:Landroid/preference/PreferenceScreen;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 233
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 1930
    new-instance v0, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 306
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    .line 328
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 332
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 342
    new-instance v0, Lcom/android/settings/SecuritySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    .line 353
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimGsm:Landroid/telephony/TelephonyManager;

    .line 354
    iput-object v2, p0, Lcom/android/settings/SecuritySettings;->mSimCdma:Landroid/telephony/TelephonyManager;

    .line 1757
    new-instance v0, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1933
    return-void
.end method

.method private StartPassword()V
    .locals 5

    .prologue
    const v3, 0x7f0a009b

    .line 1612
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "phone_password":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1615
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1616
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00a9

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1623
    :goto_0
    return-void

    .line 1619
    :cond_0
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 1620
    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a009c

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;
    .param p1, "x1"    # Z

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SecuritySettings;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2118
    const/4 v1, 0x0

    .line 2119
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2120
    sget-object v3, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 2121
    .local v0, "lmmFlag":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2122
    const/4 v1, 0x1

    .line 2127
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 2130
    :cond_1
    return v2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 60

    .prologue
    .line 421
    const-string v55, "gsm.sim.currentcardstatus"

    const/16 v56, 0x0

    const-string v57, "9"

    invoke-static/range {v55 .. v57}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .local v13, "cardStatus1":Ljava/lang/String;
    const-string v55, "gsm.sim.currentcardstatus"

    const/16 v56, 0x1

    const-string v57, "9"

    invoke-static/range {v55 .. v57}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, "cardStatus2":Ljava/lang/String;
    const-string v55, "gsm.sim.state"

    const/16 v56, 0x0

    const-string v57, "UNKNOWN"

    invoke-static/range {v55 .. v57}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 424
    .local v48, "simState1":Ljava/lang/String;
    const-string v55, "gsm.sim.state"

    const/16 v56, 0x1

    const-string v57, "UNKNOWN"

    invoke-static/range {v55 .. v57}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 425
    .local v49, "simState2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v41

    .line 426
    .local v41, "root":Landroid/preference/PreferenceScreen;
    if-eqz v41, :cond_0

    .line 427
    invoke-virtual/range {v41 .. v41}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 429
    :cond_0
    const v55, 0x7f0700b6

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v41

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v56, v0

    invoke-static/range {v55 .. v56}, Lcom/android/settings/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v40

    .line 438
    .local v40, "resid":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_23

    const/16 v55, 0x1

    :goto_0
    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    .line 440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 442
    const-string v55, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    .line 443
    .local v35, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v35, :cond_1

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v55

    if-eqz v55, :cond_24

    .line 445
    const v55, 0x7f0a021c

    move-object/from16 v0, v35

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 452
    .end local v35    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v55, v0

    if-eqz v55, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "shopdemo"

    const/16 v57, 0x0

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v55

    packed-switch v55, :pswitch_data_0

    .line 476
    :goto_2
    :pswitch_0
    new-instance v20, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    move-object/from16 v0, v20

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 477
    .local v20, "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v55

    if-eqz v55, :cond_2

    .line 478
    const-string v55, "security_category"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    check-cast v44, Landroid/preference/PreferenceGroup;

    .line 479
    .local v44, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v44, :cond_27

    .line 480
    new-instance v42, Landroid/preference/Preference;

    invoke-virtual/range {v44 .. v44}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v55

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 481
    .local v42, "sdcardPreference":Landroid/preference/Preference;
    const-string v55, "sdEncpref"

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 482
    const v55, 0x7f0a1019

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 483
    new-instance v55, Landroid/content/Intent;

    const-string v56, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct/range {v55 .. v56}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 484
    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 493
    .end local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .end local v42    # "sdcardPreference":Landroid/preference/Preference;
    .end local v44    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_2
    :goto_3
    const-string v55, "security_category"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v44

    check-cast v44, Landroid/preference/PreferenceGroup;

    .line 521
    .restart local v44    # "securityCategory":Landroid/preference/PreferenceGroup;
    const-string v55, "lock_after_timeout"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/ListPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_3

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 528
    :cond_3
    const-string v55, "biometric_weak_liveliness"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 532
    const-string v55, "visiblepattern"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 535
    const-string v55, "power_button_instantly_locks"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 537
    const-string v55, "trust_agent"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v53

    .line 538
    .local v53, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_4

    if-eqz v53, :cond_4

    invoke-virtual/range {v53 .. v53}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Ljava/lang/CharSequence;->length()I

    move-result v55

    if-lez v55, :cond_4

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const v56, 0x7f0a08a2

    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    invoke-virtual/range {v53 .. v53}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v59

    aput-object v59, v57, v58

    move-object/from16 v0, p0

    move/from16 v1, v56

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    :cond_4
    const/16 v21, 0x0

    .line 557
    .local v21, "hasFMMDMClient":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    const-string v56, "com.fmm.dm"

    invoke-static/range {v55 .. v56}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    .line 559
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-direct {v6, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 560
    .local v6, "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    const v55, 0x7f0a0f58

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 561
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 563
    new-instance v55, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const-string v56, "RemoteControls"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const v56, 0x7f0a0f5f

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setTitle(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v56, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v57, "remote_control"

    const/16 v58, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    if-eqz v55, :cond_28

    const v55, 0x7f0a0a5e

    :goto_4
    move-object/from16 v0, v56

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v55, v0

    new-instance v56, Lcom/android/settings/SecuritySettings$3;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v55

    if-nez v55, :cond_5

    const-string v55, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_5

    .line 588
    new-instance v55, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const-string v56, "SIMAlert"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    const v57, 0x7f0a0f59

    invoke-virtual/range {v56 .. v57}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    new-instance v56, Lcom/android/settings/SecuritySettings$4;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 607
    const-string v55, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_5

    if-eqz v21, :cond_5

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v55

    if-eqz v55, :cond_29

    .line 614
    const/4 v12, 0x1

    .line 616
    .local v12, "bEnableSIMAlert":Z
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_6

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_8

    :cond_6
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_7

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_8

    .line 618
    :cond_7
    const/4 v12, 0x0

    .line 620
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v55

    if-nez v55, :cond_9

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_9

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 652
    .end local v12    # "bEnableSIMAlert":Z
    :cond_9
    :goto_5
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 653
    .local v5, "GoToSamsungDive":Landroid/preference/Preference;
    const-string v55, "GoToSamsungDive"

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 654
    const v55, 0x7f0a0f74

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 655
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v55

    if-eqz v55, :cond_2d

    .line 656
    const-string v55, "http://findmymobile.samsung.cn"

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 660
    :goto_6
    new-instance v55, Lcom/android/settings/SecuritySettings$5;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 679
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 683
    new-instance v55, Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const-string v56, "LockMyMobile"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const v56, 0x7f0a0f75

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const v56, 0x7f0a0f76

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "lock_my_mobile"

    const/16 v57, 0x0

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_2e

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 691
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "shopdemo"

    const/16 v57, 0x0

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    if-eqz v55, :cond_b

    .line 696
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 701
    :cond_b
    const/16 v55, 0x1

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v55, 0x0

    const-string v56, "false"

    aput-object v56, v45, v55

    .line 702
    .local v45, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    const-string v56, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v57, "isActivationLockAllowed"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v45

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 703
    .local v25, "isActivationLockAllowed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_c

    if-nez v25, :cond_c

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 709
    :cond_c
    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "shopdemo"

    const/16 v57, 0x0

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    if-eqz v55, :cond_e

    .line 710
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    move-object/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 717
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_f

    const-string v55, "ro.product.name"

    invoke-static/range {v55 .. v55}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string v56, "google"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v55

    if-eqz v55, :cond_10

    .line 719
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNorthAmerica()Z

    move-result v55

    if-eqz v55, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_2f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_2f

    .line 720
    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 721
    const v55, 0x7f0a0f75

    move/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 729
    :cond_10
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_11

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v55

    const-string v56, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual/range {v55 .. v56}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_11

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v55

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const v56, 0x7f0a0099

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const-string v56, "mPhonePasswordPreference"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 735
    new-instance v36, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, v36

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 736
    .local v36, "phonePasswordCat":Landroid/preference/PreferenceCategory;
    const v55, 0x7f0a0098

    move-object/from16 v0, v36

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 737
    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 742
    .end local v36    # "phonePasswordCat":Landroid/preference/PreferenceCategory;
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v55

    if-eqz v55, :cond_13

    .line 743
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v55

    if-nez v55, :cond_30

    const/16 v34, 0x0

    .line 744
    .local v34, "numActiveSim":I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v55

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    .line 745
    new-instance v46, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 747
    .local v46, "simLockCat":Landroid/preference/PreferenceCategory;
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 748
    .local v24, "intent":Landroid/content/Intent;
    const-string v55, "CDMA"

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_31

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const v56, 0x7f0a18ad

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 750
    const v55, 0x7f0a18ae

    move-object/from16 v0, v46

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const-string v56, "ruim_lock_settings"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 752
    const-string v55, "com.android.settings"

    const-string v56, "com.android.settings.IccLockSettingsTab"

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 765
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 767
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    const/16 v56, 0x64

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_33

    .line 768
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 790
    :cond_12
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    const/16 v56, 0x64

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_13

    .line 791
    if-eqz v46, :cond_13

    .line 792
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v34    # "numActiveSim":I
    .end local v46    # "simLockCat":Landroid/preference/PreferenceCategory;
    :cond_13
    const v55, 0x7f0700c0

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 800
    const-string v55, "device_admin_category"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    .line 801
    .local v17, "deviceAdmin":Landroid/preference/PreferenceCategory;
    const/16 v55, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 803
    const-string v55, "sim_lock"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v47

    check-cast v47, Landroid/preference/PreferenceCategory;

    .line 804
    .local v47, "simLockCat2":Landroid/preference/PreferenceCategory;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x7f0a06df

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v47

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 806
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v52

    .line 807
    .local v52, "tm":Landroid/telephony/TelephonyManager;
    const/16 v55, 0x1

    const-string v56, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SECURITY_EMBEDEDSIMCARD"

    invoke-static/range {v56 .. v56}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    const/16 v56, 0x64

    move/from16 v0, v55

    move/from16 v1, v56

    if-lt v0, v1, :cond_3d

    .line 808
    :cond_14
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 882
    :cond_15
    :goto_c
    const-string v55, "show_password"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 883
    const-string v55, "credentials_reset"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    const-string v56, "user"

    invoke-virtual/range {v55 .. v56}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/UserManager;

    .line 887
    .local v54, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 888
    const-string v55, "no_config_credentials"

    invoke-virtual/range {v54 .. v55}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_4b

    .line 889
    const-string v55, "credential_storage_type"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 891
    .local v15, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v55

    if-eqz v55, :cond_4a

    const v51, 0x7f0a0bd2

    .line 894
    .local v51, "storageSummaryRes":I
    :goto_d
    if-eqz v15, :cond_16

    .line 895
    move/from16 v0, v51

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 907
    .end local v15    # "credentialStorageType":Landroid/preference/Preference;
    .end local v51    # "storageSummaryRes":I
    :cond_16
    :goto_e
    const-string v55, "device_admin_category"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 909
    .local v18, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v55, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v56

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 914
    const-string v55, "no_install_unknown_sources"

    invoke-virtual/range {v54 .. v55}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v55

    if-nez v55, :cond_17

    const-string v55, "no_install_apps"

    invoke-virtual/range {v54 .. v55}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_18

    .line 916
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 921
    :cond_18
    const-string v55, "security_policy_updates"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    .line 922
    const-string v55, "security_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    check-cast v55, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "send_security_reports"

    const/16 v57, -0x1

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_4c

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 929
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v55

    if-nez v55, :cond_19

    .line 930
    const-string v55, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    if-eqz v55, :cond_19

    .line 931
    const-string v55, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v18

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 956
    :cond_19
    const-string v55, "selinux.policy_version"

    const-string v56, "No Policy Version"

    invoke-static/range {v55 .. v56}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 957
    .local v37, "policyVersion":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v55

    if-nez v55, :cond_1a

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v55

    if-eqz v55, :cond_1a

    const-string v55, "GOOGLE_POLICY"

    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_1a

    const-string v55, "No Policy Version"

    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_4d

    .line 958
    :cond_1a
    const-string v55, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 980
    :cond_1b
    :goto_10
    const-string v55, "msa_security_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mSecurityUpdatesMA:Landroid/preference/Preference;

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v55

    const-string v56, "android"

    const-string v57, "com.sec.android.app.msa"

    invoke-virtual/range {v55 .. v57}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v55

    if-nez v55, :cond_50

    const/16 v33, 0x1

    .line 983
    .local v33, "msaInstalled":Z
    :goto_11
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v55

    if-eqz v55, :cond_1c

    const-string v55, "GOOGLE_POLICY"

    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_1c

    const-string v55, "No Policy Version"

    move-object/from16 v0, v55

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_51

    :cond_1c
    const/16 v43, 0x1

    .line 987
    .local v43, "seAndroidDisabled":Z
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "msa_settings_enabled"

    const/16 v57, 0x1

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 988
    if-eqz v33, :cond_1d

    if-nez v43, :cond_1e

    .line 989
    :cond_1d
    const-string v55, "msa_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    const-string v56, "msa_settings_enabled"

    const/16 v57, 0x0

    invoke-static/range {v55 .. v57}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 995
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v55

    if-nez v55, :cond_1f

    .line 997
    const-string v55, "smartcard_credential_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 1003
    :cond_1f
    :try_start_0
    const-string v55, "knox_security_mode"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceGroup;

    .line 1008
    .local v30, "knoxSecurityModeCategory":Landroid/preference/PreferenceGroup;
    if-eqz v30, :cond_20

    .line 1009
    const-string v55, "knox_active_protection"

    move-object/from16 v0, v30

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 1011
    .local v28, "kapPreference":Landroid/preference/Preference;
    if-eqz v28, :cond_20

    .line 1012
    new-instance v29, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct/range {v29 .. v29}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    .line 1013
    .local v29, "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnabled()Z

    move-result v55

    if-eqz v55, :cond_52

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x7f0a1e48

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1032
    .end local v28    # "kapPreference":Landroid/preference/Preference;
    .end local v29    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    .end local v30    # "knoxSecurityModeCategory":Landroid/preference/PreferenceGroup;
    :cond_20
    :goto_13
    const-string v55, "advanced_security"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 1035
    .local v8, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v8, :cond_53

    .line 1036
    const-string v55, "manage_trust_agents"

    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 1037
    .local v31, "manageAgents":Landroid/preference/Preference;
    if-eqz v31, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v55

    if-nez v55, :cond_21

    .line 1038
    const/16 v55, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1039
    const v55, 0x7f0a02c2

    move-object/from16 v0, v31

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1041
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v22

    .line 1042
    .local v22, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v56, v0

    invoke-static/range {v55 .. v56}, Lcom/android/settings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1044
    .local v10, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v55

    move/from16 v0, v23

    move/from16 v1, v55

    if-ge v0, v1, :cond_53

    .line 1045
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 1046
    .local v9, "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v50, Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v55

    move-object/from16 v0, v50

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v50, "smartlock":Landroid/preference/Preference;
    const-string v55, "trust_agent"

    move-object/from16 v0, v50

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1049
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1052
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 1053
    .restart local v24    # "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v55, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1054
    const-string v55, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    move-object/from16 v0, v50

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 1057
    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1058
    if-nez v22, :cond_22

    .line 1059
    const/16 v55, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1060
    const v55, 0x7f0a02c2

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1044
    :cond_22
    add-int/lit8 v23, v23, 0x1

    goto :goto_14

    .line 438
    .end local v5    # "GoToSamsungDive":Landroid/preference/Preference;
    .end local v6    # "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    .end local v8    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "agent":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v10    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v17    # "deviceAdmin":Landroid/preference/PreferenceCategory;
    .end local v18    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v21    # "hasFMMDMClient":Z
    .end local v22    # "hasSecurity":Z
    .end local v23    # "i":I
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "isActivationLockAllowed":I
    .end local v31    # "manageAgents":Landroid/preference/Preference;
    .end local v33    # "msaInstalled":Z
    .end local v37    # "policyVersion":Ljava/lang/String;
    .end local v43    # "seAndroidDisabled":Z
    .end local v44    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v45    # "selectionArgs":[Ljava/lang/String;
    .end local v47    # "simLockCat2":Landroid/preference/PreferenceCategory;
    .end local v50    # "smartlock":Landroid/preference/Preference;
    .end local v52    # "tm":Landroid/telephony/TelephonyManager;
    .end local v53    # "trustAgentPreference":Landroid/preference/Preference;
    .end local v54    # "um":Landroid/os/UserManager;
    :cond_23
    const/16 v55, 0x0

    goto/16 :goto_0

    .line 447
    .restart local v35    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_24
    const v55, 0x7f0a021a

    move-object/from16 v0, v35

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 458
    .end local v35    # "ownerInfoPref":Landroid/preference/Preference;
    :pswitch_1
    const-string v55, "security.mdpp"

    const-string v56, "None"

    invoke-static/range {v55 .. v56}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "MDPP_PROPERTY":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_25

    const-string v55, "Enabled"

    move-object/from16 v0, v55

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_26

    .line 460
    :cond_25
    const v55, 0x7f0700bd

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 462
    :cond_26
    const v55, 0x7f0700bc

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 468
    .end local v7    # "MDPP_PROPERTY":Ljava/lang/String;
    :pswitch_2
    const v55, 0x7f0700c7

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 486
    .restart local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v44    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_27
    const v55, 0x7f0700c5

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 566
    .end local v20    # "epm":Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .restart local v6    # "LostPhonePreferences":Landroid/preference/PreferenceCategory;
    .restart local v21    # "hasFMMDMClient":Z
    .restart local v53    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_28
    const v55, 0x7f0a0a5f

    goto/16 :goto_4

    .line 623
    :cond_29
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_2a

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_2b

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_2c

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v55

    if-eqz v55, :cond_9

    .line 625
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_9

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 658
    .restart local v5    # "GoToSamsungDive":Landroid/preference/Preference;
    :cond_2d
    const-string v55, "http://findmymobile.samsung.com"

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 690
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 724
    .restart local v25    # "isActivationLockAllowed":I
    .restart local v45    # "selectionArgs":[Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 743
    :cond_30
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v34

    goto/16 :goto_9

    .line 753
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v34    # "numActiveSim":I
    .restart local v46    # "simLockCat":Landroid/preference/PreferenceCategory;
    :cond_31
    const/16 v55, 0x2

    move/from16 v0, v34

    move/from16 v1, v55

    if-lt v0, v1, :cond_32

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const-string v56, "sim_lock_settings"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const v56, 0x7f0a06de

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 756
    const v55, 0x7f0a06df

    move-object/from16 v0, v46

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 757
    const-string v55, "com.android.settings"

    const-string v56, "com.android.settings.IccLockTabSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 759
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const-string v56, "sim_lock_settings"

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const v56, 0x7f0a06de

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 761
    const v55, 0x7f0a06df

    move-object/from16 v0, v46

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 762
    const-string v55, "com.android.settings"

    const-string v56, "com.android.settings.IccLockSettings"

    move-object/from16 v0, v24

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    .line 769
    :cond_33
    const-string v55, "CDMA"

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_36

    .line 770
    const-string v55, "3"

    move-object/from16 v0, v55

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_34

    const-string v55, "3"

    move-object/from16 v0, v55

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_34

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 773
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v56, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v55

    if-nez v55, :cond_35

    const/16 v55, 0x1

    :goto_15
    move-object/from16 v0, v56

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_35
    const/16 v55, 0x0

    goto :goto_15

    .line 777
    :cond_36
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-gt v0, v1, :cond_38

    .line 778
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_37

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_12

    .line 779
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 781
    :cond_38
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_3b

    .line 782
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_39

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_12

    :cond_39
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_3a

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_12

    .line 784
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    .line 787
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    move-object/from16 v56, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v55

    if-nez v55, :cond_3c

    const/16 v55, 0x1

    :goto_16
    move-object/from16 v0, v56

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_b

    :cond_3c
    const/16 v55, 0x0

    goto :goto_16

    .line 809
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v34    # "numActiveSim":I
    .end local v46    # "simLockCat":Landroid/preference/PreferenceCategory;
    .restart local v17    # "deviceAdmin":Landroid/preference/PreferenceCategory;
    .restart local v47    # "simLockCat2":Landroid/preference/PreferenceCategory;
    .restart local v52    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3d
    const-string v55, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_3e

    const-string v55, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_3e

    const-string v55, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_3e

    const-string v55, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_3e

    const-string v55, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_3f

    .line 811
    :cond_3e
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 812
    :cond_3f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->mIsPrimary:Z

    move/from16 v55, v0

    if-eqz v55, :cond_40

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v55

    if-nez v55, :cond_41

    .line 813
    :cond_40
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 814
    :cond_41
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v55

    if-eqz v55, :cond_42

    .line 815
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 818
    :cond_42
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v55

    const-string v56, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual/range {v55 .. v56}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_44

    .line 821
    const/16 v26, 0x1

    .line 823
    .local v26, "isCellOnly":Z
    :try_start_1
    const-string v55, "com.movial.ipphone.IPPhoneSettings"

    invoke-static/range {v55 .. v55}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    const-string v56, "CELL_ONLY"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v55

    const-class v56, Ljava/lang/String;

    invoke-virtual/range {v55 .. v56}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 826
    .local v4, "CELL_ONLY":Ljava/lang/String;
    const/16 v55, 0x3

    move/from16 v0, v55

    new-array v11, v0, [Ljava/lang/Class;

    const/16 v55, 0x0

    const-class v56, Landroid/content/ContentResolver;

    aput-object v56, v11, v55

    const/16 v55, 0x1

    const-class v56, Ljava/lang/String;

    aput-object v56, v11, v55

    const/16 v55, 0x2

    sget-object v56, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v56, v11, v55

    .line 828
    .local v11, "argTypes":[Ljava/lang/Class;
    const-string v55, "com.movial.ipphone.IPPhoneSettings"

    invoke-static/range {v55 .. v55}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v55

    const-string v56, "getBoolean"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v32

    .line 831
    .local v32, "method":Ljava/lang/reflect/Method;
    const/16 v55, 0x0

    const/16 v56, 0x3

    move/from16 v0, v56

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v58

    aput-object v58, v56, v57

    const/16 v57, 0x1

    aput-object v4, v56, v57

    const/16 v57, 0x2

    const/16 v58, 0x1

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    aput-object v58, v56, v57

    move-object/from16 v0, v32

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Boolean;

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v26

    .line 836
    .end local v4    # "CELL_ONLY":Ljava/lang/String;
    .end local v11    # "argTypes":[Ljava/lang/Class;
    .end local v32    # "method":Ljava/lang/reflect/Method;
    :goto_17
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_43

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v55

    if-nez v55, :cond_15

    if-eqz v26, :cond_15

    .line 838
    :cond_43
    const-string v55, "sim_lock"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 833
    :catch_0
    move-exception v19

    .line 834
    .local v19, "e":Ljava/lang/Exception;
    const-string v55, "SecuritySettings"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 841
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v26    # "isCellOnly":Z
    :cond_44
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v55

    const-string v56, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v55 .. v56}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v55

    if-eqz v55, :cond_47

    .line 845
    const/16 v27, 0x0

    .line 849
    .local v27, "isWfcRegistered":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v39

    .line 851
    .local v39, "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    sget-object v55, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-object/from16 v0, v39

    move-object/from16 v1, v55

    if-ne v0, v1, :cond_45

    .line 852
    const/16 v27, 0x1

    .line 855
    :cond_45
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v55

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_46

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v55

    if-nez v55, :cond_15

    if-eqz v27, :cond_15

    .line 857
    :cond_46
    const-string v55, "sim_lock"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 860
    .end local v27    # "isWfcRegistered":Z
    .end local v39    # "registrationStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;
    :cond_47
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_48

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-eqz v55, :cond_49

    .line 861
    :cond_48
    const-string v55, "sim_lock"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 864
    :cond_49
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v55

    if-eqz v55, :cond_15

    .line 865
    const-string v55, "UNKNOWN"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_15

    const-string v55, "ABSENT"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v55

    if-nez v55, :cond_15

    .line 866
    const-string v55, "sim_lock"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 891
    .restart local v15    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v54    # "um":Landroid/os/UserManager;
    :cond_4a
    const v51, 0x7f0a0bd3

    goto/16 :goto_d

    .line 899
    .end local v15    # "credentialStorageType":Landroid/preference/Preference;
    :cond_4b
    const-string v55, "credentials_management"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceGroup;

    .line 901
    .local v16, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v55, "credentials_reset"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v16

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 902
    const-string v55, "credentials_install"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v16

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 903
    const-string v55, "credential_storage_type"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v16

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_e

    .line 926
    .end local v16    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v18    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_f

    .line 960
    .restart local v37    # "policyVersion":Ljava/lang/String;
    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isUsaCountryCode()Z

    move-result v55

    if-nez v55, :cond_4e

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1b

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const v56, 0x7f0a00aa

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 965
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v55

    if-nez v55, :cond_4f

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1b

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const v56, 0x7f0a00ab

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 970
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1b

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mSecurityPolicyUpdates:Landroid/preference/Preference;

    move-object/from16 v55, v0

    const v56, 0x7f0a00ac

    invoke-virtual/range {v55 .. v56}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_10

    .line 981
    :cond_50
    const/16 v33, 0x0

    goto/16 :goto_11

    .line 983
    .restart local v33    # "msaInstalled":Z
    :cond_51
    const/16 v43, 0x0

    goto/16 :goto_12

    .line 1017
    .restart local v28    # "kapPreference":Landroid/preference/Preference;
    .restart local v29    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    .restart local v30    # "knoxSecurityModeCategory":Landroid/preference/PreferenceGroup;
    .restart local v43    # "seAndroidDisabled":Z
    :cond_52
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v55

    if-eqz v55, :cond_20

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x7f0a1e47

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v28

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_13

    .line 1026
    .end local v28    # "kapPreference":Landroid/preference/Preference;
    .end local v29    # "kapStatus":Lcom/android/settings/KnoxActiveProtectionStatus;
    .end local v30    # "knoxSecurityModeCategory":Landroid/preference/PreferenceGroup;
    :catch_1
    move-exception v19

    .line 1027
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v55, "SecuritySettings"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "KAP Mode failed: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1068
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v8    # "advancedCategory":Landroid/preference/PreferenceGroup;
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    invoke-static/range {v55 .. v55}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v55

    const-class v56, Lcom/android/settings/SecuritySettings;

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v56

    const/16 v57, 0x1

    const/16 v58, 0x1

    invoke-virtual/range {v55 .. v58}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 1071
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_18
    sget-object v55, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v23

    move/from16 v1, v55

    if-ge v0, v1, :cond_55

    .line 1072
    sget-object v55, Lcom/android/settings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v55, v55, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    .line 1073
    .local v38, "pref":Landroid/preference/Preference;
    if-eqz v38, :cond_54

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1071
    :cond_54
    add-int/lit8 v23, v23, 0x1

    goto :goto_18

    .line 1077
    .end local v38    # "pref":Landroid/preference/Preference;
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v55

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    .line 1078
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SecuritySettings;->isKioskContainer:Z

    move/from16 v55, v0

    if-eqz v55, :cond_5b

    .line 1079
    const-string v55, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    if-eqz v55, :cond_56

    .line 1080
    const-string v55, "app_ops"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    move-object/from16 v0, v18

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1083
    :cond_56
    if-eqz v44, :cond_57

    .line 1084
    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1088
    :cond_57
    const-string v55, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    if-eqz v55, :cond_58

    .line 1089
    const-string v55, "new_security_update_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1092
    :cond_58
    const-string v55, "credentials_management"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    if-eqz v55, :cond_59

    .line 1093
    const-string v55, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1096
    :cond_59
    const-string v55, "advanced_security"

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v55

    if-eqz v55, :cond_5a

    .line 1097
    const-string v55, "advanced_security"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-direct {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 1100
    :cond_5a
    if-eqz v6, :cond_5b

    .line 1101
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1105
    :cond_5b
    return-object v41

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 1297
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1298
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1299
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1300
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 1302
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1303
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 1304
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1308
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 1309
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1313
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1314
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 1315
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1322
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1323
    return-void

    .line 1322
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/android/settings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1113
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 1114
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1116
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1117
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 1115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1118
    :cond_1
    invoke-static {v2, p0}, Lcom/android/settings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1119
    invoke-static {p0, v2}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 1121
    .local v5, "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 380
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 381
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 382
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 384
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    const v1, 0x7f0700bf

    .line 411
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 382
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 387
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f0700ba

    goto :goto_1

    .line 389
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    const v1, 0x7f0700b7

    goto :goto_1

    .line 393
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 395
    :sswitch_0
    const v1, 0x7f0700c2

    .line 396
    goto :goto_1

    .line 399
    :sswitch_1
    const v1, 0x7f0700c4

    .line 400
    goto :goto_1

    .line 404
    :sswitch_2
    const v1, 0x7f0700c1

    .line 405
    goto :goto_1

    .line 407
    :sswitch_3
    const v1, 0x7f0700b9

    goto :goto_1

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x70000 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2145
    const-string v2, ""

    .line 2146
    .local v2, "rtn_val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2148
    .local v0, "FIRST_INDEX":I
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 2149
    .local v1, "manager":Landroid/accounts/AccountManager;
    const-string v4, "com.osp.app.signin"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 2151
    .local v3, "samsungAccnts":[Landroid/accounts/Account;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 2152
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    .end local v1    # "manager":Landroid/accounts/AccountManager;
    .end local v3    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v2

    .line 2154
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private isCCMEmpty()Z
    .locals 5

    .prologue
    .line 1466
    :try_start_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1467
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const-string v3, "knox_ccm_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 1468
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    invoke-interface {v3}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v0

    .line 1470
    .local v0, "ccmVersion":Ljava/lang/String;
    :goto_0
    const-string v3, "3.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1471
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    invoke-interface {v3, v1}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->isCCMEmptyForKeyChain(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1472
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is NOT empty"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v3, 0x0

    .line 1483
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_1
    return v3

    .line 1468
    .restart local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1475
    .restart local v0    # "ccmVersion":Ljava/lang/String;
    :cond_1
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is empty"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1478
    .restart local v0    # "ccmVersion":Ljava/lang/String;
    .restart local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_2
    const-string v3, "SecuritySettings"

    const-string v4, "CCM is NOT available on this device"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1480
    .end local v0    # "ccmVersion":Ljava/lang/String;
    .end local v1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :catch_0
    move-exception v2

    .line 1481
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SecuritySettings"

    const-string v4, "Failed at ClientCertificateManager API isCCMEmptyForKeyChain-Exception "

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mCtx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 2163
    if-nez p1, :cond_1

    .line 2173
    :cond_0
    :goto_0
    return v1

    .line 2167
    :cond_1
    const-string v2, "isKioskModeEnabled"

    invoke-static {p1, v2}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2169
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "true"

    const-string v3, "isKioskModeEnabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2170
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNorthAmerica()Z
    .locals 3

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, "ret":Z
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1173
    :cond_0
    const/4 v0, 0x1

    .line 1175
    :cond_1
    return v0
.end method

.method private isUsaCountryCode()Z
    .locals 3

    .prologue
    .line 1148
    const/4 v0, 0x0

    .line 1149
    .local v0, "ret":Z
    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1150
    const/4 v0, 0x1

    .line 1152
    :cond_0
    return v0
.end method

.method private removePreferenceByKey(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceScreen;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1134
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1135
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1138
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1185
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 1265
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1267
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1268
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1269
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1270
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 1272
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 1276
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 1278
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 1269
    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2084
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0f77

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0f75

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a08f4

    new-instance v2, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a01ce

    new-instance v2, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 2114
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 12

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1284
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1285
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1286
    .local v5, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1287
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 1288
    aget-object v8, v5, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1289
    .local v6, "timeout":J
    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 1290
    move v0, v4

    .line 1287
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1294
    .end local v6    # "timeout":J
    :cond_1
    return-void
.end method

.method private updateSIMLockEnable()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1765
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "cardStatus1":Ljava/lang/String;
    const-string v4, "gsm.sim.currentcardstatus"

    const-string v7, "9"

    invoke-static {v4, v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1767
    .local v1, "cardStatus2":Ljava/lang/String;
    const-string v4, "gsm.sim.state"

    const-string v7, "UNKNOWN"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1768
    .local v2, "simState1":Ljava/lang/String;
    const-string v4, "gsm.sim.state"

    const-string v7, "UNKNOWN"

    invoke-static {v4, v5, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1769
    .local v3, "simState2":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    .line 1770
    const-string v4, "CDMA"

    invoke-static {v4}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1771
    const-string v4, "3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1773
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1774
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1798
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1777
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v4, v6

    .line 1776
    goto :goto_1

    :cond_3
    move v5, v6

    .line 1777
    goto :goto_2

    .line 1781
    :cond_4
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-gt v4, v5, :cond_6

    .line 1782
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1783
    :cond_5
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1784
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1786
    :cond_6
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 1787
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    const-string v4, "UNKNOWN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1789
    :cond_8
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1790
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1793
    :cond_9
    iget-object v7, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1794
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 1793
    goto :goto_3

    :cond_b
    move v5, v6

    .line 1794
    goto :goto_4
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 1195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a08b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a08b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 1202
    return-void
.end method

.method private warnAppInstallationFromPackageInstaller()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 1210
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1211
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040016

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1212
    .local v1, "layout":Landroid/view/View;
    const v4, 0x7f100051

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1213
    .local v2, "mCheck":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "one_time_operate"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1215
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a08b2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 1243
    return-void

    .line 1213
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public SetReactivationFlag(I)I
    .locals 3
    .param p1, "setFlag"    # I

    .prologue
    const/4 v0, 0x0

    .line 2134
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2135
    sget-object v1, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/SecuritySettings;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->setFlag(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2137
    const-string v1, "SecuritySettings"

    const-string v2, "SetReactivationFlag() returns error!! "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1875
    const v0, 0x7f0a0e66

    return v0
.end method

.method public moveRemoteControls()V
    .locals 14

    .prologue
    const v3, 0x7f0a0f63

    const/4 v1, 0x1

    const v5, 0x7f0a0f5f

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1880
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1882
    .local v8, "mSharedPreferences":Landroid/content/SharedPreferences;
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 1883
    .local v9, "mTime":Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 1884
    invoke-virtual {v9, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1886
    const-string v0, "pref_due_date"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1887
    .local v7, "mDueDate":I
    invoke-virtual {v9, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v12, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v10

    .line 1888
    .local v10, "timeJulianDay":I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_3

    .line 1890
    if-eqz v7, :cond_0

    if-ge v7, v10, :cond_1

    .line 1892
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1918
    :goto_0
    return-void

    .line 1895
    :cond_1
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1896
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1899
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1905
    :cond_3
    if-eqz v7, :cond_4

    if-ge v7, v10, :cond_5

    .line 1907
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1910
    :cond_5
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1911
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1914
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v3, 0x7f0a0f59

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 1676
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1677
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1679
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1681
    :cond_1
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 1683
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 1684
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v9, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 1689
    .end local v9    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 1690
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    .line 1691
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1692
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_3

    .line 1693
    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1695
    :cond_3
    iput-object v4, p0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    .line 1710
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1713
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_6

    .line 1714
    if-ne p2, v1, :cond_0

    .line 1715
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1716
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1720
    :cond_5
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1721
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.settings.SIM_CHANGE_ALERT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, v8}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1723
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 1724
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1729
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_7

    .line 1730
    if-ne p2, v1, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->moveRemoteControls()V

    goto :goto_0

    .line 1735
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    .line 1736
    if-ne p2, v1, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 1738
    invoke-virtual {p0, v6}, Lcom/android/settings/SecuritySettings;->SetReactivationFlag(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 1739
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1740
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_off"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1741
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_off]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1752
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_1
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LMM[RequiredAuthFlag] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->checkReactivationLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1745
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->SetReactivationFlag(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 1746
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1747
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.settings.reactivationlock_on"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1748
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v0, "SecuritySettings"

    const-string v1, " onActivityResult[reactivationlock_on]"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 1247
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 1248
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 1249
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1253
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 1247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 358
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 360
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/SecuritySettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 366
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 368
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 373
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1257
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1261
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1487
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1489
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1490
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1493
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1802
    const/4 v5, 0x1

    .line 1803
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 1805
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v8, "lock_after_timeout"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1806
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1808
    .local v6, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_lock_after_timeout"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1870
    .end local v6    # "timeout":I
    :cond_0
    :goto_1
    return v5

    .line 1810
    .restart local v6    # "timeout":I
    :catch_0
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "SecuritySettings"

    const-string v8, "could not persist lockAfter timeout setting"

    invoke-static {v7, v8, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1843
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v8, "show_password"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1844
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1846
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "toggle_install_applications"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1847
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1848
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1849
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1850
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 1851
    const-string v7, "sec.android.intent.extra.INSTALL_INTENT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1852
    .local v2, "installIntent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 1853
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallationFromPackageInstaller()V

    .line 1855
    const/4 v5, 0x0

    goto :goto_1

    .line 1857
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 1859
    const/4 v5, 0x0

    goto :goto_1

    .line 1862
    .end local v2    # "installIntent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    .line 1864
    const/4 v5, 0x0

    goto :goto_1

    .line 1867
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_6
    invoke-direct {p0, v7}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 1500
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_1

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_lock_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1502
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1504
    .local v13, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1505
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.IccLockTabSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1510
    :goto_0
    const-string v2, "extra_from_search"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1511
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1513
    .local v8, "args":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v9

    .line 1514
    .local v9, "arrayLink":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "extra_parent_preference_key"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v2, "extra_setting_value"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/SecuritySettings;->mSecondSettingValue:I

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1516
    const-string v2, "extra_second_fragment_bundle_key"

    invoke-virtual {v13, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1517
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1518
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1519
    const/4 v2, 0x1

    .line 1604
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v9    # "arrayLink":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "intent":Landroid/content/Intent;
    :goto_1
    return v2

    .line 1507
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.IccLockSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1523
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/SecuritySettings;->mOpenDetailMenu:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/android/settings/SecuritySettings;->mSettingValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1524
    sget v2, Lcom/android/settings/SecuritySettings;->mSettingValue:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v10, 0x1

    .local v10, "bValue":Z
    :goto_2
    move-object/from16 v11, p2

    .line 1525
    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 1526
    .local v11, "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v11}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1527
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1533
    .end local v10    # "bValue":Z
    .end local v11    # "checkBoxStatePreference":Landroid/preference/CheckBoxPreference;
    :cond_2
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1534
    const-string v4, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f0a024a

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1604
    :cond_3
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1524
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 1536
    :cond_5
    const-string v2, "biometric_weak_improve_matching"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1537
    new-instance v12, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v12, v2, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1539
    .local v12, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x7c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_3

    .line 1547
    .end local v12    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_6
    const-string v2, "trust_agent"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1548
    new-instance v12, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v12, v2, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1550
    .restart local v12    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    .line 1551
    const/16 v2, 0x7e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1555
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/SecuritySettings;->mClickedTrustAgentPreference:Landroid/preference/Preference;

    goto :goto_3

    .line 1557
    .end local v12    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1559
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->StartPassword()V

    goto :goto_3

    .line 1562
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SecuritySettings;->mSecurityReports:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_security_reports"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/16 v16, 0x1

    .line 1564
    .local v16, "state":Z
    :goto_4
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state in db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    if-eqz v16, :cond_a

    .line 1567
    const/16 v16, 0x0

    .line 1568
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_security_reports"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1575
    :goto_5
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state for intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.android.setting.intent.send_security_report_checked"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v2, "IS_SEND_SECURITY_REPORT"

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1563
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v16    # "state":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    .line 1571
    .restart local v16    # "state":Z
    :cond_a
    const/16 v16, 0x1

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "send_security_reports"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 1581
    .end local v16    # "state":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1583
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->showReactivationLockDialog()V

    goto/16 :goto_3

    .line 1585
    :cond_c
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1586
    .local v15, "mIntent":Landroid/content/Intent;
    const-string v2, "com.osp.app.signin"

    const-string v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1587
    const-string v2, "MODE"

    const-string v3, "REMOTE_CONTROLS"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    const/16 v2, 0x3eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 1593
    .end local v15    # "mIntent":Landroid/content/Intent;
    :cond_d
    const-string v2, "smartCardConfig"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1594
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1595
    .restart local v13    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARDCREDENTIALSETTINGSPAGE"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1601
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_e
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 21

    .prologue
    .line 1328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    move/from16 v16, v0

    .line 1329
    .local v16, "super_mOpenDetailMenu":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1331
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v19, "isNonMarketAppAllowed"

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1339
    .local v10, "isNonMarketAppAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v19, "isPasswordVisibilityEnabled"

    invoke-static/range {v17 .. v19}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1341
    .local v11, "isPasswordVisibilityEnabled":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_d

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_e

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1349
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowUnsignedApp(Landroid/content/ComponentName;)Z

    move-result v17

    if-nez v17, :cond_f

    :cond_1
    const/4 v5, 0x1

    .line 1350
    .local v5, "blockUnsignedAppInstall":Z
    :goto_2
    if-nez v5, :cond_2

    .line 1351
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1352
    .local v4, "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getAllowAppListThirdParty(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1353
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1354
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    const/4 v5, 0x1

    .line 1357
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    :goto_3
    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x10407a5

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1362
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 1376
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v14

    .line 1377
    .local v14, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1381
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1384
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1388
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1391
    if-eqz v11, :cond_13

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "show_password"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/4 v6, 0x1

    .line 1393
    .local v6, "checked":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1403
    .end local v6    # "checked":Z
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->checkReactivationLock()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1404
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1409
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1418
    :cond_8
    :goto_8
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "false"

    aput-object v18, v15, v17

    .line 1419
    .local v15, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v19, "isActivationLockAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1420
    .local v9, "isActivationLockAllowed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    if-nez v9, :cond_9

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1425
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isCCMEmpty()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_16

    :cond_a
    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1437
    .local v7, "context":Landroid/content/Context;
    const-string v17, "content://com.sec.knox.provider/CertificatePolicy"

    const-string v18, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1438
    .local v13, "isUserRemoveCertificatesAllowed":I
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .end local v15    # "selectionArgs":[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "false"

    aput-object v18, v15, v17

    .line 1439
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    const-string v17, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v18, "isUserChangeProfilesAllowed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v7, v0, v1, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1441
    .local v12, "isUserChangeProfilesAllowed":I
    if-eqz v13, :cond_b

    if-nez v12, :cond_c

    .line 1443
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1449
    .end local v7    # "context":Landroid/content/Context;
    .end local v12    # "isUserChangeProfilesAllowed":I
    .end local v13    # "isUserRemoveCertificatesAllowed":I
    :cond_c
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1450
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v17, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "remote_control"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobileObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1458
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1459
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable()V

    .line 1462
    return-void

    .line 1342
    .end local v5    # "blockUnsignedAppInstall":Z
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "isActivationLockAllowed":I
    .end local v14    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1344
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1349
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1354
    .restart local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "blockUnsignedAppInstall":Z
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1363
    .end local v4    # "allowSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    if-nez v5, :cond_3

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0a08b5

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1367
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 1392
    .restart local v14    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1396
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 1406
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_my_mobile"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    .line 1413
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockMyMobile:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 1431
    .restart local v9    # "isActivationLockAllowed":I
    .restart local v15    # "selectionArgs":[Ljava/lang/String;
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_9
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "requestCode"    # I

    .prologue
    .line 1627
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1628
    .local v0, "pickIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1630
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1633
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1922
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1923
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1925
    return-void
.end method
