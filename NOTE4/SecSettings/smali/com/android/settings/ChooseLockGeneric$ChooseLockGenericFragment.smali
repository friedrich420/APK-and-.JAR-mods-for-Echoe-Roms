.class public Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static CAC_LOCK_CHOSEN:Z

.field private static isFacewithVoice:Z

.field private static mIsFromSearch:Z

.field private static selectedTwoFactorType:I

.field private static usingTwoFactor:Z


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFinishPending:Z

.field private mFromDirectSet:Z

.field private mHandler:Landroid/os/Handler;

.field mIdentifyDialog:Landroid/app/Dialog;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mRegisterStarted:Z

.field private mRequirePassword:Z

.field private mWaitingForConfirmation:Z

.field private mWmanagerConnected:Landroid/database/ContentObserver;

.field private odePasswordQuality:Ljava/lang/String;

.field private oldPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 226
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSearch:Z

    .line 228
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    .line 248
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 249
    sput-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 220
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 230
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    .line 234
    iput-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 236
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRegisterStarted:Z

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z

    .line 252
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    .line 1337
    new-instance v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$2;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRegisterStarted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;ILandroid/util/MutableBoolean;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/util/MutableBoolean;

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->broadcastFingerprintLockEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private allowedForBlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1282
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1278
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private broadcastFingerprintLockEnabled()V
    .locals 2

    .prologue
    .line 1716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_LOCK_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v0, "message":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1718
    return-void
.end method

.method private disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 36
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 1069
    .local v9, "entries":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, "lockscreen.biometric_weak_fallback"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 1071
    .local v21, "onlyShowFallback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, "Block"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 1072
    .local v14, "isBlock":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v29

    .line 1076
    .local v29, "weakBiometricAvailable":Z
    const-string v30, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 1077
    .local v20, "mUm":Landroid/os/UserManager;
    const/16 v30, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v26

    .line 1078
    .local v26, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    .line 1079
    .local v25, "singleUser":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v15

    .line 1080
    .local v15, "isGuestMode":Z
    const-string v30, "ChooseLockGeneric"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "isGuestMode: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v18, 0x1

    .line 1085
    .local v18, "isVoiceTalkAvailable":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const-string v31, "com.vlingo.midas"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_1
    const-string v30, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static/range {v30 .. v30}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 1090
    const/16 v18, 0x0

    .line 1093
    :cond_0
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v30

    add-int/lit8 v10, v30, -0x1

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_36

    .line 1094
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    .line 1095
    .local v23, "pref":Landroid/preference/Preference;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v30, v23

    .line 1096
    check-cast v30, Landroid/preference/PreferenceScreen;

    invoke-virtual/range {v30 .. v30}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v19

    .line 1097
    .local v19, "key":Ljava/lang/String;
    const/4 v8, 0x1

    .line 1098
    .local v8, "enabled":Z
    const/16 v28, 0x1

    .line 1099
    .local v28, "visible":Z
    const-string v30, "unlock_set_off"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1100
    if-gtz p1, :cond_5

    const/4 v8, 0x1

    .line 1101
    :goto_3
    move/from16 v28, v25

    .line 1232
    :cond_1
    :goto_4
    if-eqz v28, :cond_2

    if-eqz v21, :cond_33

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_33

    if-nez v14, :cond_33

    .line 1233
    :cond_2
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1093
    .end local v8    # "enabled":Z
    .end local v19    # "key":Ljava/lang/String;
    .end local v28    # "visible":Z
    :cond_3
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1078
    .end local v10    # "i":I
    .end local v15    # "isGuestMode":Z
    .end local v18    # "isVoiceTalkAvailable":Z
    .end local v23    # "pref":Landroid/preference/Preference;
    .end local v25    # "singleUser":Z
    :cond_4
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1086
    .restart local v15    # "isGuestMode":Z
    .restart local v18    # "isVoiceTalkAvailable":Z
    .restart local v25    # "singleUser":Z
    :catch_0
    move-exception v6

    .line 1087
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v18, 0x0

    goto :goto_1

    .line 1100
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "enabled":Z
    .restart local v10    # "i":I
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v23    # "pref":Landroid/preference/Preference;
    .restart local v28    # "visible":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 1102
    :cond_6
    const-string v30, "unlock_set_none"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1103
    if-gtz p1, :cond_7

    const/4 v8, 0x1

    :goto_6
    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    .line 1106
    :cond_8
    const-string v30, "unlock_set_motion"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 1107
    if-gtz p1, :cond_9

    const/4 v8, 0x1

    :goto_7
    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    goto :goto_7

    .line 1110
    :cond_a
    const-string v30, "unlock_set_biometric_weak"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 1111
    const v30, 0x8000

    move/from16 v0, p1

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/util/MutableBoolean;->value:Z

    move/from16 v30, v0

    if-eqz v30, :cond_d

    :cond_b
    const/4 v8, 0x1

    .line 1113
    :goto_8
    if-eqz v29, :cond_e

    if-nez v15, :cond_e

    const/16 v28, 0x1

    .line 1116
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_c

    const-string v30, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1117
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1111
    :cond_d
    const/4 v8, 0x0

    goto :goto_8

    .line 1113
    :cond_e
    const/16 v28, 0x0

    goto :goto_9

    .line 1120
    :cond_f
    const-string v30, "unlock_set_biometric_weak_with_voice"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 1121
    const v30, 0x8000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_12

    const/4 v8, 0x1

    .line 1122
    :goto_a
    if-eqz v29, :cond_13

    if-eqz v18, :cond_13

    if-nez v15, :cond_13

    const/16 v28, 0x1

    .line 1124
    :goto_b
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    const-string v31, "false"

    aput-object v31, v24, v30

    .line 1125
    .local v24, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v32, "isSVoiceAllowed"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 1126
    .local v17, "isSVoiceAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v32, "isMicrophoneEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1127
    .local v16, "isMicrophoneEnabled":I
    const/16 v30, -0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    const/16 v30, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    .line 1128
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    const/16 v30, 0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    const/16 v30, 0x1

    :goto_c
    and-int v8, v8, v30

    .line 1133
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_11

    const-string v30, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1134
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1121
    .end local v16    # "isMicrophoneEnabled":I
    .end local v17    # "isSVoiceAllowed":I
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 1122
    :cond_13
    const/16 v28, 0x0

    goto :goto_b

    .line 1128
    .restart local v16    # "isMicrophoneEnabled":I
    .restart local v17    # "isSVoiceAllowed":I
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_14
    const/16 v30, 0x0

    goto :goto_c

    .line 1137
    .end local v16    # "isMicrophoneEnabled":I
    .end local v17    # "isSVoiceAllowed":I
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_15
    const-string v30, "unlock_set_signature"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 1138
    const v30, 0x9000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_16

    const/4 v8, 0x1

    .line 1139
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v30

    if-eqz v30, :cond_17

    if-nez v15, :cond_17

    const/16 v28, 0x1

    :goto_e
    goto/16 :goto_4

    .line 1138
    :cond_16
    const/4 v8, 0x0

    goto :goto_d

    .line 1139
    :cond_17
    const/16 v28, 0x0

    goto :goto_e

    .line 1140
    :cond_18
    const-string v30, "unlock_set_pattern"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 1141
    const/high16 v30, 0x10000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_19

    const/4 v8, 0x1

    .line 1142
    :goto_f
    if-nez v15, :cond_1a

    const/16 v28, 0x1

    :goto_10
    goto/16 :goto_4

    .line 1141
    :cond_19
    const/4 v8, 0x0

    goto :goto_f

    .line 1142
    :cond_1a
    const/16 v28, 0x0

    goto :goto_10

    .line 1143
    :cond_1b
    const-string v30, "unlock_set_fingerprint"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_28

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_21

    if-nez v15, :cond_21

    const/16 v28, 0x1

    .line 1146
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1147
    .local v12, "intent":Landroid/content/Intent;
    const-string v30, "lockscreen.password_type"

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1149
    .local v5, "currentpwdquality":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v5, v0, :cond_1c

    .line 1151
    const-string v30, "minimum_quality"

    const/16 v31, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1152
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v5

    .line 1155
    :cond_1c
    const/high16 v30, 0x20000

    move/from16 v0, v30

    if-lt v5, v0, :cond_23

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFingeprintForODEEnabled()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    .line 1157
    const/4 v8, 0x1

    .line 1171
    :cond_1d
    :goto_12
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v30, 0x0

    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v24, v30

    .line 1172
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v32, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 1173
    .local v13, "isBiometricAuthenticationEnabled":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v30

    if-lez v30, :cond_1e

    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v13, v0, :cond_1e

    .line 1174
    if-nez v13, :cond_25

    .line 1175
    const/4 v8, 0x0

    .line 1183
    :cond_1e
    :goto_13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v30

    const/16 v31, 0x64

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1f

    .line 1185
    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v7

    .line 1186
    .local v7, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    if-eqz v7, :cond_27

    .line 1187
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v4

    .line 1188
    .local v4, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    const-string v30, "2.2.0"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_26

    const/16 v28, 0x1

    .line 1189
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v30

    const-string v31, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v32, "isBiometricAuthenticationEnabled"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v30 .. v33}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 1190
    if-eqz v4, :cond_1f

    if-nez v13, :cond_1f

    .line 1191
    const/4 v8, 0x0

    .line 1204
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_1f
    :goto_15
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v27

    .line 1205
    .local v27, "versionInfo":Landroid/os/Bundle;
    if-eqz v27, :cond_20

    const-string v30, "2.0"

    const-string v31, "version"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 1206
    const-string v30, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PersonaManager;

    .line 1207
    .local v22, "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v11

    .line 1208
    .local v11, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_20

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    iget-boolean v0, v11, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    move/from16 v30, v0

    if-nez v30, :cond_20

    .line 1209
    const/4 v8, 0x0

    .line 1216
    .end local v11    # "info":Landroid/content/pm/PersonaInfo;
    .end local v22    # "personaManager":Landroid/os/PersonaManager;
    :cond_20
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 1217
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 1144
    .end local v5    # "currentpwdquality":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "isBiometricAuthenticationEnabled":I
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    .end local v27    # "versionInfo":Landroid/os/Bundle;
    :cond_21
    const/16 v28, 0x0

    goto/16 :goto_11

    .line 1161
    .restart local v5    # "currentpwdquality":I
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_22
    const/4 v8, 0x0

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v30

    if-nez v30, :cond_1d

    const-string v30, "password"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v30

    const/high16 v31, 0x20000

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1d

    .line 1164
    const/4 v8, 0x1

    goto/16 :goto_12

    .line 1168
    :cond_23
    const v30, 0x61000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_24

    const/4 v8, 0x1

    :goto_16
    goto/16 :goto_12

    :cond_24
    const/4 v8, 0x0

    goto :goto_16

    .line 1177
    .restart local v13    # "isBiometricAuthenticationEnabled":I
    .restart local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_25
    const/4 v8, 0x1

    goto/16 :goto_13

    .line 1188
    .restart local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :cond_26
    const/16 v28, 0x0

    goto/16 :goto_14

    .line 1194
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_27
    :try_start_2
    const-string v30, "ChooseLockGeneric"

    const-string v31, "ekm is null"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_15

    .line 1196
    .end local v7    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :catch_1
    move-exception v6

    .line 1197
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v30, "ChooseLockGeneric"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "SecurityException: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1219
    .end local v5    # "currentpwdquality":I
    .end local v6    # "e":Ljava/lang/SecurityException;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "isBiometricAuthenticationEnabled":I
    .end local v24    # "selectionArgs":[Ljava/lang/String;
    :cond_28
    const-string v30, "unlock_set_smart"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2a

    .line 1220
    const/high16 v30, 0x10000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_29

    const/4 v8, 0x1

    :goto_17
    goto/16 :goto_4

    :cond_29
    const/4 v8, 0x0

    goto :goto_17

    .line 1222
    :cond_2a
    const-string v30, "unlock_set_pin"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 1223
    const/high16 v30, 0x30000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_2b

    const/4 v8, 0x1

    .line 1224
    :goto_18
    if-nez v15, :cond_2c

    const/16 v28, 0x1

    :goto_19
    goto/16 :goto_4

    .line 1223
    :cond_2b
    const/4 v8, 0x0

    goto :goto_18

    .line 1224
    :cond_2c
    const/16 v28, 0x0

    goto :goto_19

    .line 1225
    :cond_2d
    const-string v30, "unlock_set_cac_pin"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_30

    .line 1226
    const/high16 v30, 0x70000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_2e

    const/4 v8, 0x1

    .line 1227
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v30

    if-eqz v30, :cond_2f

    if-nez v15, :cond_2f

    const/16 v28, 0x1

    :goto_1b
    goto/16 :goto_4

    .line 1226
    :cond_2e
    const/4 v8, 0x0

    goto :goto_1a

    .line 1227
    :cond_2f
    const/16 v28, 0x0

    goto :goto_1b

    .line 1228
    :cond_30
    const-string v30, "unlock_set_password"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 1229
    const/high16 v30, 0x60000

    move/from16 v0, p1

    move/from16 v1, v30

    if-gt v0, v1, :cond_31

    const/4 v8, 0x1

    .line 1230
    :goto_1c
    if-nez v15, :cond_32

    const/16 v28, 0x1

    :goto_1d
    goto/16 :goto_4

    .line 1229
    :cond_31
    const/4 v8, 0x0

    goto :goto_1c

    .line 1230
    :cond_32
    const/16 v28, 0x0

    goto :goto_1d

    .line 1234
    :cond_33
    if-eqz v28, :cond_34

    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForBlock(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_35

    if-eqz v14, :cond_35

    .line 1235
    :cond_34
    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 1236
    :cond_35
    if-nez v8, :cond_3

    .line 1237
    const v30, 0x7f0a029a

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1238
    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1242
    .end local v8    # "enabled":Z
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "pref":Landroid/preference/Preference;
    .end local v28    # "visible":Z
    :cond_36
    return-void
.end method

.method private getCacChosen()Z
    .locals 1

    .prologue
    .line 1730
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    return v0
.end method

.method private getSignatureIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1319
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1321
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1322
    const-string v3, "lockscreen.signature_fallback"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1323
    const-string v3, "confirm_credentials"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    const-string v3, ":settings:show_fragment_title"

    const v4, 0x7f0a024b

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1330
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.signaturelock"

    const-string v4, "com.sec.android.signaturelock.SetupSignature"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1333
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v3, "PendingIntent"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1334
    return-object v1
.end method

.method private identifyFinger()V
    .locals 5

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1705
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1709
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 1713
    :goto_0
    return-void

    .line 1711
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog()V

    goto :goto_0
.end method

.method private isFingeprintForODEEnabled()Z
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 7
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 527
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 528
    iput p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 529
    iput-boolean p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 534
    .local v0, "accEn":Z
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v2

    .line 535
    .local v2, "required":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v1

    .line 537
    .local v1, "intent":Landroid/content/Intent;
    const/16 v3, 0x66

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 546
    .end local v0    # "accEn":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "required":Z
    :goto_1
    return-void

    .restart local v0    # "accEn":Z
    :cond_0
    move v3, v4

    .line 534
    goto :goto_0

    .line 539
    .end local v0    # "accEn":Z
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 540
    iput-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 544
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 542
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    goto :goto_2
.end method

.method private sendIntentToKnoxKeyguard(Z)V
    .locals 4
    .param p1, "isResetSuccess"    # Z

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.B2C_PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    const-string v1, "isresetsuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 591
    return-void
.end method

.method private setCacChosen(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1726
    sput-boolean p1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->CAC_LOCK_CHOSEN:Z

    .line 1727
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 1734
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$3;-><init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1744
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1745
    return-void
.end method

.method private updatePreferencesOrFinish()V
    .locals 31

    .prologue
    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 719
    .local v8, "intent":Landroid/content/Intent;
    const-string v25, "lockscreen.password_type"

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 720
    .local v23, "quality":I
    const/16 v25, -0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 722
    const-string v25, "minimum_quality"

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 723
    new-instance v3, Landroid/util/MutableBoolean;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v3, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 724
    .local v3, "allowBiometric":Landroid/util/MutableBoolean;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result v23

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 726
    .local v22, "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v22, :cond_0

    .line 727
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 729
    :cond_0
    const v25, 0x7f0700c3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 733
    new-instance v25, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 735
    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 736
    const v25, 0x7f0a029b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 737
    .local v20, "mText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v25

    if-nez v25, :cond_14

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 740
    const v25, 0x7f0a029b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 797
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "lockscreen.biometric_weak_fallback"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 798
    .local v10, "isFallback":Z
    if-nez v10, :cond_2

    .line 806
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 807
    .local v24, "root":Landroid/preference/PreferenceScreen;
    const-string v25, "unlock_set_motion"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    if-eqz v25, :cond_3

    .line 808
    const-string v25, "unlock_set_motion"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 811
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 812
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 813
    const-string v25, "unlock_set_fingerprint"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 817
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v24

    .line 818
    const-string v25, "unlock_set_biometric_weak_with_voice"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 819
    const-string v25, "unlock_set_biometric_weak"

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->wManagerChanged()V

    .line 826
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILandroid/util/MutableBoolean;)V

    .line 833
    .end local v3    # "allowBiometric":Landroid/util/MutableBoolean;
    .end local v10    # "isFallback":Z
    .end local v20    # "mText":Ljava/lang/String;
    .end local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    .end local v24    # "root":Landroid/preference/PreferenceScreen;
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    const/16 v26, 0x64

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1b

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 835
    .restart local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v22, :cond_11

    .line 836
    const-string v25, "unlock_set_password"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    .line 837
    .local v16, "mPrefPassword":Landroid/preference/PreferenceScreen;
    const-string v25, "unlock_set_pin"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    .line 838
    .local v18, "mPrefPin":Landroid/preference/PreferenceScreen;
    const-string v25, "unlock_set_pattern"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 839
    .local v17, "mPrefPattern":Landroid/preference/PreferenceScreen;
    const-string v25, "unlock_set_fingerprint"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceScreen;

    .line 840
    .local v15, "mPrefFinger":Landroid/preference/PreferenceScreen;
    const-string v25, "unlock_set_two_factor"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 841
    .local v19, "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 842
    if-eqz v16, :cond_6

    .line 843
    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 844
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 846
    :cond_6
    if-eqz v18, :cond_7

    .line 847
    const/16 v25, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 848
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 850
    :cond_7
    if-eqz v17, :cond_8

    .line 851
    const/16 v25, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 852
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 854
    :cond_8
    if-eqz v15, :cond_9

    .line 855
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 856
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 858
    :cond_9
    if-eqz v19, :cond_a

    .line 859
    const/16 v25, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 860
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 862
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 863
    const/4 v13, 0x0

    .line 864
    .local v13, "mIsMultifactorAuthEnforced":Z
    const/4 v12, 0x0

    .line 865
    .local v12, "mIsBioAuthEnabled":Z
    const/4 v14, 0x0

    .line 868
    .local v14, "mIsSDPEnabled":Z
    const-string v25, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PersonaManager;

    .line 869
    .local v21, "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v7

    .line 870
    .local v7, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v7, :cond_b

    iget-boolean v0, v7, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b

    iget-boolean v0, v7, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 871
    const/4 v14, 0x1

    .line 876
    :cond_b
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v6

    .line 877
    .local v6, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v27, "isBiometricAuthenticationEnabled"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v25 .. v28}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 878
    .local v9, "isBiometricAuthenticationEnabled":I
    if-eqz v6, :cond_19

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v4

    .line 880
    .local v4, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v9, v0, :cond_c

    .line 881
    const/4 v12, 0x1

    .line 883
    :cond_c
    if-eqz v4, :cond_d

    .line 884
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->isMultifactorAuthenticationEnforced()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 894
    .end local v4    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v9    # "isBiometricAuthenticationEnabled":I
    :cond_d
    :goto_2
    if-nez v14, :cond_e

    if-nez v12, :cond_1a

    :cond_e
    if-eqz v15, :cond_1a

    .line 895
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 900
    :cond_f
    :goto_3
    if-eqz v13, :cond_10

    .line 901
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 902
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 903
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 904
    if-eqz v15, :cond_10

    .line 905
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 907
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 908
    if-eqz v19, :cond_11

    .line 909
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 923
    .end local v7    # "info":Landroid/content/pm/PersonaInfo;
    .end local v12    # "mIsBioAuthEnabled":Z
    .end local v13    # "mIsMultifactorAuthEnforced":Z
    .end local v14    # "mIsSDPEnabled":Z
    .end local v15    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .end local v16    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .end local v17    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .end local v18    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .end local v19    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .end local v21    # "personaManager":Landroid/os/PersonaManager;
    :cond_11
    :goto_4
    return-void

    .line 742
    .restart local v3    # "allowBiometric":Landroid/util/MutableBoolean;
    .restart local v20    # "mText":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_motion_tilt_to_unlock"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_13

    .line 744
    const v25, 0x7f0a119b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 747
    :cond_13
    const v25, 0x7f0a029c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 750
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v25

    if-eqz v25, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_screen_face_with_voice"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 753
    .local v11, "isfacevalue":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_15

    .line 755
    const v25, 0x7f0a025a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 758
    :cond_15
    const v25, 0x7f0a029d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 760
    .end local v11    # "isfacevalue":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v25

    if-eqz v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 762
    const v25, 0x7f0a029e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 764
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    .line 792
    const v25, 0x7f0a02a2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_0

    .line 767
    :sswitch_0
    const v25, 0x7f0a029f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 768
    goto/16 :goto_0

    .line 770
    :sswitch_1
    const v25, 0x7f0a1a8b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 771
    goto/16 :goto_0

    .line 774
    :sswitch_2
    const v25, 0x7f0a026e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 775
    goto/16 :goto_0

    .line 778
    :sswitch_3
    const v25, 0x7f0a02a0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 779
    goto/16 :goto_0

    .line 783
    :sswitch_4
    const v25, 0x7f0a02a2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 784
    goto/16 :goto_0

    .line 787
    :sswitch_5
    const v25, 0x7f0a028b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 788
    goto/16 :goto_0

    .line 829
    .end local v3    # "allowBiometric":Landroid/util/MutableBoolean;
    .end local v20    # "mText":Ljava/lang/String;
    .end local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_18
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 887
    .restart local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v7    # "info":Landroid/content/pm/PersonaInfo;
    .restart local v9    # "isBiometricAuthenticationEnabled":I
    .restart local v12    # "mIsBioAuthEnabled":Z
    .restart local v13    # "mIsMultifactorAuthEnforced":Z
    .restart local v14    # "mIsSDPEnabled":Z
    .restart local v15    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .restart local v16    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .restart local v17    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .restart local v18    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .restart local v19    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .restart local v21    # "personaManager":Landroid/os/PersonaManager;
    .restart local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_19
    :try_start_1
    const-string v25, "ChooseLockGeneric"

    const-string v26, "ekm is null"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 889
    .end local v6    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v9    # "isBiometricAuthenticationEnabled":I
    :catch_0
    move-exception v5

    .line 890
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v25, "ChooseLockGeneric"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SecurityException: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 896
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1a
    if-eqz v15, :cond_f

    .line 897
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 898
    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 914
    .end local v7    # "info":Landroid/content/pm/PersonaInfo;
    .end local v12    # "mIsBioAuthEnabled":Z
    .end local v13    # "mIsMultifactorAuthEnforced":Z
    .end local v14    # "mIsSDPEnabled":Z
    .end local v15    # "mPrefFinger":Landroid/preference/PreferenceScreen;
    .end local v16    # "mPrefPassword":Landroid/preference/PreferenceScreen;
    .end local v17    # "mPrefPattern":Landroid/preference/PreferenceScreen;
    .end local v18    # "mPrefPin":Landroid/preference/PreferenceScreen;
    .end local v19    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    .end local v21    # "personaManager":Landroid/os/PersonaManager;
    .end local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 915
    .restart local v22    # "prefScreen":Landroid/preference/PreferenceScreen;
    if-eqz v22, :cond_11

    const-string v25, "unlock_set_two_factor"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/PreferenceScreen;

    if-eqz v25, :cond_11

    .line 916
    const-string v25, "unlock_set_two_factor"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 917
    .restart local v19    # "mPrefTwoFactor":Landroid/preference/PreferenceScreen;
    if-eqz v19, :cond_11

    .line 918
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 764
    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_2
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_1
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_2
    .end sparse-switch
.end method

.method private upgradeQuality(ILandroid/util/MutableBoolean;)I
    .locals 2
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFingeprintForODEEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x61000

    if-ne p1, v1, :cond_0

    move v0, p1

    .line 952
    .end local p1    # "quality":I
    .local v0, "quality":I
    :goto_0
    return v0

    .line 949
    .end local v0    # "quality":I
    .restart local p1    # "quality":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 950
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 951
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result p1

    move v0, p1

    .line 952
    .end local p1    # "quality":I
    .restart local v0    # "quality":I
    goto :goto_0
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 957
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 958
    .local v0, "minQuality":I
    if-ge p1, v0, :cond_0

    .line 959
    move p1, v0

    .line 961
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 7
    .param p1, "quality"    # I

    .prologue
    const/4 v6, 0x0

    .line 973
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, p1

    .line 1010
    .end local p1    # "quality":I
    .local v2, "quality":I
    :goto_0
    return v2

    .line 976
    .end local v2    # "quality":I
    .restart local p1    # "quality":I
    :cond_0
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 977
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    .line 979
    .local v3, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v3, :cond_1

    .line 980
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v3    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 983
    .restart local v3    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 984
    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    iget v5, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v4, v5, :cond_2

    move v2, p1

    .line 986
    .end local p1    # "quality":I
    .restart local v2    # "quality":I
    goto :goto_0

    .line 991
    .end local v2    # "quality":I
    .restart local p1    # "quality":I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    .line 992
    .local v1, "encrypted":Z
    if-nez v1, :cond_3

    const-string v4, "password"

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1000
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1001
    const/high16 p1, 0x50000

    :cond_4
    move v2, p1

    .line 1010
    .end local p1    # "quality":I
    .restart local v2    # "quality":I
    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 1015
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, "saleCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1046
    .local v0, "is3lmActiveAdmin":Z
    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_0

    .line 1048
    const/high16 p1, 0x10000

    .line 1052
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1722
    const v0, 0x7f0a0e60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x64

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 595
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 596
    iput-boolean v8, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 598
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult : requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resultCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    # getter for: Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    if-nez p2, :cond_2

    .line 602
    invoke-direct {p0, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sendIntentToKnoxKeyguard(Z)V

    .line 607
    :cond_0
    :goto_0
    if-ne p1, v9, :cond_3

    if-ne p2, v6, :cond_3

    .line 608
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 609
    if-eqz p3, :cond_1

    .line 610
    const-string v3, "password"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    .line 611
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 698
    :goto_1
    return-void

    .line 604
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->sendIntentToKnoxKeyguard(Z)V

    goto :goto_0

    .line 612
    :cond_3
    const/16 v3, 0x65

    if-ne p1, v3, :cond_4

    .line 613
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Activity;->setResult(I)V

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 616
    :cond_4
    const/16 v3, 0x66

    if-ne p1, v3, :cond_6

    if-ne p2, v6, :cond_6

    .line 618
    if-eqz p3, :cond_5

    .line 619
    const-string v3, "extra_require_password"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    .line 622
    :cond_5
    iget v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    iget-boolean v4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 623
    :cond_6
    const/16 v3, 0x67

    if-ne p1, v3, :cond_7

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Activity;->setResult(I)V

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 626
    :cond_7
    const/16 v3, 0x3e8

    if-eq p1, v3, :cond_8

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_c

    .line 627
    :cond_8
    if-ne p2, v6, :cond_a

    .line 628
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 630
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v9, :cond_9

    .line 631
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "knoxPin"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x61000

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v8, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 633
    const-string v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 634
    .local v1, "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 635
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/os/PersonaManager;->setIsUnlockedAfterTurnOn(IZ)V

    .line 636
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3, v7}, Landroid/os/PersonaManager;->setIsFingerReset(IZ)V

    .line 637
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "knoxPin"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;I)V

    .line 640
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->broadcastFingerprintLockEnabled()V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a1aef

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 642
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v2, "warningClearIntent":Landroid/content/Intent;
    const-string v3, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    .end local v2    # "warningClearIntent":Landroid/content/Intent;
    :cond_a
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v3

    if-ne v3, v7, :cond_b

    .line 647
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 648
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Activity;->setResult(I)V

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 651
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-lt v3, v9, :cond_11

    .line 652
    const/16 v3, 0x2711

    if-ne p1, v3, :cond_e

    .line 653
    if-ne p2, v7, :cond_d

    .line 655
    :try_start_0
    const-string v3, "ChooseLockGeneric"

    const-string v4, "set two factor : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_finger_print_plus"

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 657
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_2
    const-string v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 662
    .restart local v1    # "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3, v8}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    .line 692
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 664
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_e
    const/16 v3, 0x2712

    if-ne p1, v3, :cond_f

    .line 665
    const/high16 v3, 0x10000

    if-lt p2, v3, :cond_d

    const/high16 v3, 0x60000

    if-gt p2, v3, :cond_d

    .line 666
    sput-boolean v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 667
    sput p2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    goto/16 :goto_1

    .line 670
    :cond_f
    const/16 v3, 0x2713

    if-ne p1, v3, :cond_d

    .line 671
    if-ne p2, v7, :cond_10

    .line 673
    :try_start_1
    const-string v3, "ChooseLockGeneric"

    const-string v4, "set two factor : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_finger_print_plus"

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 675
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 679
    :goto_4
    const-string v3, "persona"

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 680
    .restart local v1    # "personaManager":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3, v8}, Landroid/os/PersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_3

    .line 676
    .end local v1    # "personaManager":Landroid/os/PersonaManager;
    :catch_1
    move-exception v0

    .line 677
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 683
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_10
    :try_start_2
    const-string v3, "ChooseLockGeneric"

    const-string v4, "set two factor : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "knox_finger_print_plus"

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 685
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "two factor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "knox_finger_print_plus"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 686
    :catch_2
    move-exception v0

    .line 687
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 695
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setResult(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 414
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "ode_password_quality"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    .line 267
    :cond_0
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 268
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 269
    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 270
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "confirm_credentials"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 276
    .local v1, "confirmCredentials":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    instance-of v5, v5, Lcom/android/settings/ChooseLockGeneric$InternalActivity;

    if-eqz v5, :cond_1

    .line 277
    if-nez v1, :cond_9

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 280
    :cond_1
    if-eqz p1, :cond_2

    .line 281
    const-string v5, "password_confirmed"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 282
    const-string v5, "waiting_for_confirmation"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 283
    const-string v5, "finish_pending"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 284
    const-string v5, "encrypt_requested_quality"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 285
    const-string v5, "encrypt_requested_disabled"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 290
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-lt v5, v11, :cond_3

    .line 291
    const-string v5, "KEY_USING_TWO_FACTOR"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 292
    const-string v5, "KEY_SELECTED_TWO_FACTOR_TYPE"

    const/4 v8, -0x1

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "key_knox_b2c_reset_case"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z
    invoke-static {v5}, Lcom/android/settings/ChooseLockGeneric;->access$002(Z)Z

    .line 295
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-lt v5, v11, :cond_4

    # getter for: Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 297
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 301
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 305
    :cond_5
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v5, :cond_a

    .line 306
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 331
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v5, :cond_7

    .line 332
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 335
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 337
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "extra_from_search"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSearch:Z

    .line 338
    const-string v5, "ChooseLockGeneric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSearchVerTwoEnable mIsFromSearch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSearch:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    return-void

    :cond_9
    move v5, v7

    .line 277
    goto/16 :goto_0

    .line 307
    :cond_a
    iget-boolean v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v5, :cond_6

    .line 308
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 311
    .local v2, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v8, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v9, "getMinimumCharacterChangeLength"

    invoke-static {v5, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 315
    .local v4, "passwordCharacterChangeLength":I
    const/4 v0, 0x0

    .line 316
    .local v0, "ConfirmationActivityResult":Z
    if-lez v4, :cond_c

    .line 317
    invoke-virtual {v2, v11, v10, v10, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_b

    move v0, v6

    .line 321
    :goto_2
    const-string v5, "ChooseLockGeneric"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate MDM passwordCharacterChangeLength("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") ConfirmationActivityResult("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz v0, :cond_e

    .line 324
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 325
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto/16 :goto_1

    :cond_b
    move v0, v7

    .line 317
    goto :goto_2

    .line 319
    :cond_c
    invoke-virtual {v2, v11, v10, v10}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    move v0, v6

    :goto_3
    goto :goto_2

    :cond_d
    move v0, v7

    goto :goto_3

    .line 327
    :cond_e
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 551
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .line 552
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 554
    .local v3, "onlyShowFallback":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Block"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 556
    .local v1, "isBlock":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 558
    .local v5, "voiceFallback":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "lockscreen.signature_fallback"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 561
    .local v2, "isSignature":Z
    const-string v6, "ChooseLockGeneric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateView : onlyShowFallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceFallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040256

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, "header":Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 582
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v4

    .line 567
    :cond_1
    if-eqz v3, :cond_0

    .line 568
    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040025

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 571
    .restart local v0    # "header":Landroid/view/View;
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 573
    .end local v0    # "header":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040256

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 575
    .restart local v0    # "header":Landroid/view/View;
    if-eqz v2, :cond_3

    move-object v6, v0

    .line 576
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0253

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_3
    const v6, 0x102000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    const-string v0, "ChooseLockGeneric"

    const-string v1, "set smart lock off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 351
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 419
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 420
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x8000

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 425
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 428
    .local v0, "handled":Z
    const v5, 0x16058

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 431
    const-string v5, "unlock_set_motion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 434
    .local v3, "isFallback":Z
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/ChooseLockMotion;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 435
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "confirm_credentials"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string v5, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 437
    if-eqz v3, :cond_0

    .line 438
    const/16 v5, 0x65

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v0

    .line 516
    .end local v0    # "handled":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isFallback":Z
    .local v1, "handled":I
    :goto_0
    return v1

    .line 441
    .end local v1    # "handled":I
    .restart local v0    # "handled":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isFallback":Z
    :cond_0
    const/high16 v5, 0x2000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isFallback":Z
    :goto_1
    move v1, v0

    .line 516
    .restart local v1    # "handled":I
    goto :goto_0

    .line 447
    .end local v1    # "handled":I
    :cond_1
    const-string v5, "unlock_set_off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 448
    invoke-virtual {p0, v8, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 451
    :cond_2
    const-string v5, "unlock_set_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    invoke-virtual {p0, v8, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 458
    :cond_3
    const-string v5, "unlock_set_biometric_weak"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 459
    invoke-direct {p0, v7, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_1

    .line 462
    :cond_4
    const-string v5, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 463
    sput-boolean v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    .line 464
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 467
    :cond_5
    const-string v5, "unlock_set_signature"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 468
    const v5, 0x9000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1

    .line 471
    :cond_6
    const-string v5, "unlock_set_pattern"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 472
    const/high16 v5, 0x10000

    invoke-direct {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_1

    .line 474
    :cond_7
    const-string v5, "unlock_set_pin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 475
    const/high16 v5, 0x20000

    invoke-direct {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_1

    .line 480
    :cond_8
    const-string v5, "unlock_set_cac_pin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 481
    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 482
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isCACCardRegistered()Z

    move-result v5

    if-ne v5, v6, :cond_9

    .line 483
    invoke-direct {p0, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 484
    const/high16 v5, 0x70000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 488
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 489
    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->showCardNotRegisteredDialog()V

    goto/16 :goto_1

    .line 494
    :cond_a
    const-string v5, "unlock_set_fingerprint"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 495
    const v5, 0x61000

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 498
    :cond_b
    const-string v5, "unlock_set_smart"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 499
    const v5, 0x9100

    invoke-virtual {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 503
    :cond_c
    const-string v5, "unlock_set_password"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 504
    const/high16 v5, 0x40000

    invoke-direct {p0, v5, v8}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_1

    .line 508
    :cond_d
    const-string v5, "unlock_set_two_factor"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_e

    .line 509
    const-string v5, "ChooseLockGeneric"

    const-string v6, "set two-factor for knox"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/KnoxChooseLockTwoFactor;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 511
    .restart local v2    # "intent":Landroid/content/Intent;
    const/16 v5, 0x2712

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 514
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wmanager_connected"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWmanagerConnected:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 363
    :cond_0
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On resuming generic activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 366
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_1

    .line 367
    const/high16 v3, 0x70000

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 373
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_2

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "turn-on"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 375
    .local v1, "isBlockTurnOn":Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Block"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 376
    .local v0, "isBlock":Z
    if-eqz v1, :cond_6

    .line 377
    const v3, 0x9100

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 382
    .end local v0    # "isBlock":Z
    .end local v1    # "isBlockTurnOn":Z
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v3, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "DirectSet"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 385
    const-string v3, "fingerprint"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 386
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z

    .line 387
    const v3, 0x61000

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 393
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 395
    iget-boolean v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v3, :cond_4

    .line 396
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 401
    :cond_4
    sget-boolean v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_5

    .line 402
    sget v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 403
    sput-boolean v6, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 404
    const/4 v3, -0x1

    sput v3, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 408
    :cond_5
    return-void

    .line 378
    .restart local v0    # "isBlock":Z
    .restart local v1    # "isBlockTurnOn":Z
    :cond_6
    if-eqz v0, :cond_2

    .line 379
    const/high16 v3, 0x10000

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 702
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 704
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 705
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    sget-boolean v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 711
    const-string v0, "KEY_USING_TWO_FACTOR"

    sget-boolean v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 712
    const-string v0, "KEY_SELECTED_TWO_FACTOR_TYPE"

    sget v1, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    :cond_0
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 24
    .param p1, "quality"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 1432
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v2, :cond_0

    .line 1433
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to update password without confirming it"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1436
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1438
    .local v4, "isFallback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Block"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 1440
    .local v12, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.signature_fallback"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 1443
    .local v13, "isSignature":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILandroid/util/MutableBoolean;)I

    move-result p1

    .line 1445
    const-string v2, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnlockMethodAndFinish : quality : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " isFallback : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/high16 v2, 0x70000

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 1449
    const-string v2, "ChooseLockGeneric"

    const-string v3, "Device already paired with CAC card "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 1451
    .local v5, "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_1

    .line 1452
    const/4 v5, 0x4

    .line 1454
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 1455
    .local v6, "maxLength":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v7, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v11

    .line 1456
    .local v11, "intent":Landroid/content/Intent;
    const-string v2, "lockscreen.password_type"

    move/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string v2, "lockscreen.password_min"

    invoke-virtual {v11, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    const-string v2, "lockscreen.password_max"

    invoke-virtual {v11, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1459
    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1462
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getCacChosen()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1463
    const-string v2, "choose_cac_pin"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->setCacChosen(Z)V

    .line 1467
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1468
    const-string v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1472
    const/high16 v2, 0x2000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1473
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 1700
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void

    .line 1477
    :cond_5
    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-lt v0, v2, :cond_13

    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-gt v0, v2, :cond_13

    const v2, 0x61000

    move/from16 v0, p1

    if-eq v0, v2, :cond_13

    .line 1480
    const-string v2, "ChooseLockGeneric"

    const-string v3, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_NUMERIC"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 1482
    .restart local v5    # "minLength":I
    const/4 v2, 0x4

    if-ge v5, v2, :cond_6

    .line 1483
    const/4 v5, 0x4

    .line 1485
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    .line 1486
    .restart local v6    # "maxLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 v8, 0x0

    move/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v11

    .line 1488
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v2, "lockscreen.signature_fallback"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1490
    const-string v2, "Block"

    invoke-virtual {v11, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1492
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1493
    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1497
    :cond_7
    const/high16 v2, 0x60000

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_b

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1501
    .local v20, "minSymbol":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1502
    .local v19, "minNumeric":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1503
    .local v16, "minLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v21

    .line 1504
    .local v21, "minUpperCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v17

    .line 1505
    .local v17, "minLowerCase":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v18

    .line 1506
    .local v18, "minNonLetter":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v15

    .line 1508
    .local v15, "minLen":I
    add-int v2, v20, v19

    move/from16 v0, v18

    if-le v2, v0, :cond_8

    .line 1509
    add-int v18, v20, v19

    .line 1510
    const-string v2, "lockscreen.password_min_nonletter"

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1513
    :cond_8
    add-int v2, v21, v17

    move/from16 v0, v16

    if-le v2, v0, :cond_9

    .line 1514
    add-int v16, v21, v17

    .line 1517
    :cond_9
    add-int v2, v18, v16

    if-le v2, v15, :cond_a

    .line 1518
    add-int v15, v18, v16

    .line 1519
    const-string v2, "lockscreen.password_min"

    invoke-virtual {v11, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    :cond_a
    const-string v2, "lockscreen.password_min_uppercase"

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1523
    const-string v2, "lockscreen.password_min_lowercase"

    move/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const-string v2, "lockscreen.password_min_symbols"

    move/from16 v0, v20

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    const-string v2, "lockscreen.password_min_numeric"

    move/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1526
    const-string v2, "lockscreen.password_min_letters"

    move/from16 v0, v16

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1531
    .end local v15    # "minLen":I
    .end local v16    # "minLetter":I
    .end local v17    # "minLowerCase":I
    .end local v18    # "minNonLetter":I
    .end local v19    # "minNumeric":I
    .end local v20    # "minSymbol":I
    .end local v21    # "minUpperCase":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 1532
    const-string v2, "lockscreen.password_old"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->oldPassword:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    :cond_c
    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1537
    const-string v2, "ode_password_quality"

    const-string v3, "password"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    :cond_d
    if-eqz v4, :cond_f

    .line 1541
    if-eqz v13, :cond_e

    .line 1542
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1544
    :cond_e
    const/16 v2, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1548
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_12

    .line 1549
    # getter for: Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1550
    const-string v2, "key_knox_b2c_reset_case"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1551
    :cond_10
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_11

    .line 1552
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1553
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1554
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1556
    :cond_11
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1560
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1561
    const/high16 v2, 0x2000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1562
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1564
    .end local v5    # "minLength":I
    .end local v6    # "maxLength":I
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_13
    const/high16 v2, 0x10000

    move/from16 v0, p1

    if-ne v0, v2, :cond_1a

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mRequirePassword:Z

    const/4 v7, 0x0

    invoke-static {v2, v4, v3, v7}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v11

    .line 1567
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v2, "lockscreen.signature_fallback"

    invoke-virtual {v11, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1569
    const-string v2, "Block"

    invoke-virtual {v11, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1571
    const-string v2, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockscreen.biometric_weak_with_voice_fallback : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_with_voice_fallback"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1574
    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1577
    :cond_14
    if-eqz v4, :cond_16

    .line 1578
    if-eqz v13, :cond_15

    .line 1579
    const/16 v2, 0x67

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1581
    :cond_15
    const/16 v2, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1585
    :cond_16
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_19

    .line 1586
    # getter for: Lcom/android/settings/ChooseLockGeneric;->isKnoxB2CResetCase:Z
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric;->access$000()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1587
    const-string v2, "key_knox_b2c_reset_case"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1588
    :cond_17
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    if-eqz v2, :cond_18

    .line 1589
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->usingTwoFactor:Z

    .line 1590
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->selectedTwoFactorType:I

    .line 1591
    const/16 v2, 0x2713

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1593
    :cond_18
    const/16 v2, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1597
    :cond_19
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1598
    const/high16 v2, 0x2000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1599
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1601
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1a
    const v2, 0x61000

    move/from16 v0, p1

    if-ne v0, v2, :cond_21

    .line 1602
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mIsFromSearch:Z

    if-eqz v2, :cond_1d

    .line 1603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1606
    :goto_1
    const-string v2, "ChooseLockGeneric"

    const-string v3, "updateUnlockMethodAndFinish : PASSWORD_QUALITY_FINGERPRINT "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1611
    const-string v2, "com.android.settings.fingerprint.FingerprintDisclaimer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1612
    .local v9, "chooseLockFingerprint":Ljava/lang/Class;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v14

    .line 1613
    .local v14, "mIntent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1614
    const-string v2, "previousStage"

    const-string v3, "ChooseLockGeneric"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "password"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->odePasswordQuality:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1618
    :cond_1b
    const-string v2, "for_ode"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1621
    :cond_1c
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1641
    .end local v9    # "chooseLockFingerprint":Ljava/lang/Class;
    .end local v14    # "mIntent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 1642
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto/16 :goto_0

    .line 1605
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    goto :goto_1

    .line 1623
    :cond_1e
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->showSensorErrorDialog()V

    goto/16 :goto_0

    .line 1626
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z

    if-eqz v2, :cond_20

    .line 1627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    .line 1628
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->broadcastFingerprintLockEnabled()V

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a1aef

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 1633
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1634
    .local v22, "warningClearIntent":Landroid/content/Intent;
    const-string v2, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1636
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFromDirectSet:Z

    goto/16 :goto_0

    .line 1638
    .end local v22    # "warningClearIntent":Landroid/content/Intent;
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->identifyFinger()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1647
    :cond_21
    const v2, 0x8000

    move/from16 v0, p1

    if-ne v0, v2, :cond_23

    .line 1648
    const-string v2, "ChooseLockGeneric"

    const-string v3, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_BIOMETRIC_WEAK"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    sget-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    if-nez v2, :cond_22

    .line 1651
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1653
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockFaceWarning;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1655
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 1665
    :goto_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    goto/16 :goto_0

    .line 1658
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_22
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1660
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockFaceWarning;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1661
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1663
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1666
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_23
    const/high16 v2, 0x90000

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const v2, 0x9100

    move/from16 v0, p1

    if-ne v0, v2, :cond_25

    .line 1667
    :cond_24
    const-string v2, "ChooseLockGeneric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUnlockMethodAndFinish : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1670
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ChooseLockBLock;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1671
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1672
    const-string v2, "Block"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1673
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1676
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_25
    const v2, 0x9000

    move/from16 v0, p1

    if-ne v0, v2, :cond_26

    .line 1677
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 1678
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSignatureIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1679
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1680
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_26
    if-nez p1, :cond_28

    .line 1681
    const-string v2, "ChooseLockGeneric"

    const-string v3, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_lockscreen_is_smart_lock"

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1689
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->mOpenDetailMenu:Z

    if-eqz v2, :cond_27

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1696
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0

    .line 1698
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_0
.end method

.method public wManagerChanged()V
    .locals 5

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wmanager_connected"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 927
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 936
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v2, "unlock_set_smart"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 937
    const-string v2, "unlock_set_smart"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
