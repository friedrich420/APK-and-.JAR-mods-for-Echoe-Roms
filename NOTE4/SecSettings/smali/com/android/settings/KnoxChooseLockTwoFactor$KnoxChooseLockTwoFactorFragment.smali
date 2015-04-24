.class public Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KnoxChooseLockTwoFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockTwoFactorFragment"
.end annotation


# static fields
.field private static mCurrentLockTypeIdx:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private btnSetup:Landroid/widget/Button;

.field private mConfimationStarted:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mIdentifyDialog:Landroid/app/Dialog;

.field private mPrefPassword:Lcom/android/settings/RadioButtonPreference;

.field private mPrefPattern:Lcom/android/settings/RadioButtonPreference;

.field private mPrefPin:Lcom/android/settings/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 109
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 110
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    .line 112
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    .line 113
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    .line 114
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    .line 116
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    .line 118
    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    .line 122
    new-instance v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchFingerprint()V

    return-void
.end method

.method private identifyFinger()V
    .locals 5

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIdentifyDialog:Landroid/app/Dialog;

    .line 388
    :cond_1
    return-void
.end method

.method private isCheckedLocktype()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/android/settings/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/android/settings/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/android/settings/RadioButtonPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 270
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchFingerprint()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 346
    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "[FingerPlusActivity]launchFingerprint : PASSWORD_QUALITY_FINGERPRINT "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintDisclaimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string v1, "previousStage"

    const-string v2, "ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const-string v1, "is_knox"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string v1, "skip_change_lock_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v1, "KnoxChooseLockTwoFactor"

    const-string v2, "startactivity : ChooseLockFingerprint "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v1, 0x3f7

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 377
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    goto :goto_0

    .line 367
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    if-nez v1, :cond_0

    .line 368
    iput-boolean v3, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mConfimationStarted:Z

    .line 369
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->identifyFinger()V

    goto :goto_0

    .line 372
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSensorErrorDialog()V

    goto :goto_0
.end method

.method private launchLockType()V
    .locals 5

    .prologue
    const/high16 v4, 0x20000

    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    .line 304
    :cond_0
    sget v1, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    packed-switch v1, :pswitch_data_0

    .line 339
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->finish()V

    .line 344
    return-void

    .line 306
    :pswitch_1
    const/high16 v0, 0x60000

    .line 307
    .local v0, "quality":I
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x60000

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 314
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-gt v1, v4, :cond_1

    .line 311
    const/high16 v0, 0x40000

    goto :goto_1

    .line 321
    .end local v0    # "quality":I
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 332
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCheckedEvent()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "setCheckedEvent"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setConfirmButton()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 240
    return-void
.end method

.method private setConfirmButton()V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isCheckedLocktype()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "Confirm button enable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "Confirm button diable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setPasswordEnabledByPolicy(I)V
    .locals 4
    .param p1, "passWordQuality"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    const/high16 v0, 0x20000

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    const/high16 v3, 0x10000

    if-gt p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/RadioButtonPreference;->setEnabled(Z)V

    .line 260
    return-void

    :cond_0
    move v0, v2

    .line 258
    goto :goto_0

    :cond_1
    move v1, v2

    .line 259
    goto :goto_1
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 391
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$4;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$3;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 404
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 405
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FingerPlusActivity] onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_1

    .line 279
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    const-string v0, "KnoxChooseLockTwoFactor"

    const-string v1, "[Two Factor] else"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->addPreferencesFromResource(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    .line 188
    const-string v0, "pref_lock_password"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    .line 189
    const-string v0, "pref_lock_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    .line 190
    const-string v0, "pref_lock_pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    .line 192
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFPM:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 194
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 201
    .local v1, "content":Landroid/widget/LinearLayout;
    const v2, 0x7f04010a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 202
    .local v0, "buttomButtonLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "add buttom button"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    const v2, 0x7f100270

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    .line 208
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 209
    const-string v2, "KnoxChooseLockTwoFactor"

    const-string v3, "init buttom button"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->btnSetup:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$2;-><init>(Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 219
    return-object v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 158
    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v0, "pref_lock_password"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sput v3, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    .line 161
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 175
    :cond_0
    :goto_0
    const-string v0, "KnoxChooseLockTwoFactor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setConfirmButton()V

    .line 177
    return v3

    .line 164
    :cond_1
    const-string v0, "pref_lock_pin"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    .line 166
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "pref_lock_pattern"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mCurrentLockTypeIdx:I

    .line 171
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settings/RadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setCheckedEvent()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->activity:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setPasswordEnabledByPolicy(I)V

    .line 231
    return-void
.end method
