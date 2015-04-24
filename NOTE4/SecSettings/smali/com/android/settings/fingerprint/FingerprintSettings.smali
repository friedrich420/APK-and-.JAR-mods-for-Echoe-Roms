.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings.java"


# static fields
.field private static mDeviceProvisioned:I


# instance fields
.field private enrolledFingerprintNum:I

.field isFidoInstalled:Z

.field isKioskMode:Z

.field isSbrowserInstalled:Z

.field private mAlternativePassword:Landroid/preference/Preference;

.field private mChangeLock:Landroid/preference/Preference;

.field private mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintChecked:Z

.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field mIdentifyDialog:Landroid/app/Dialog;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPaypalPayment:Landroid/preference/Preference;

.field private mRegister:Landroid/preference/Preference;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRegisterStarted:Z

.field private mSamsungAccount:Landroid/preference/Preference;

.field private mWebSignIn:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintChecked:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    .line 97
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isFidoInstalled:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isSbrowserInstalled:Z

    .line 105
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKioskMode:Z

    .line 109
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 160
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private enrolledFingerprintNum()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 404
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintChecked:Z

    if-eqz v2, :cond_0

    .line 405
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFingerprintChecked is already checked [enrolledFingerprintNum] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    .line 418
    :goto_0
    return v2

    .line 409
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    .line 411
    .local v0, "fingerstatus":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    .line 412
    shl-int v2, v3, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 413
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    .line 411
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintChecked:Z

    .line 417
    const-string v2, "FingerprintSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[enrolledFingerprintNum] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    goto :goto_0
.end method

.method private getFingerprintVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 448
    goto :goto_0
.end method

.method private getScreenLockSummary()Ljava/lang/String;
    .locals 7

    .prologue
    const v6, 0x7f0a02a2

    const v5, 0x7f0a029b

    const/4 v4, 0x0

    .line 542
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "summaryText":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 545
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 594
    :goto_0
    return-object v1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_motion_tilt_to_unlock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    const v2, 0x7f0a119b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 553
    :cond_1
    const v2, 0x7f0a029c

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_face_with_voice"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 560
    .local v0, "isfacevalue":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 561
    const v2, 0x7f0a025a

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 563
    :cond_3
    const v2, 0x7f0a029d

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 566
    .end local v0    # "isfacevalue":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 590
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 568
    :sswitch_0
    const v2, 0x7f0a029f

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    goto :goto_0

    .line 571
    :sswitch_1
    const v2, 0x7f0a02a1

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    goto :goto_0

    .line 575
    :sswitch_2
    const v2, 0x7f0a026e

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    goto :goto_0

    .line 579
    :sswitch_3
    const v2, 0x7f0a02a0

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 580
    goto :goto_0

    .line 584
    :sswitch_4
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 585
    goto :goto_0

    .line 587
    :sswitch_5
    const v2, 0x7f0a028b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    goto/16 :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_2
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_1
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_2
    .end sparse-switch
.end method

.method private identifyFinger()V
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    .line 443
    return-void
.end method

.method private isSupportPayWithPaypal()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 598
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "countryIso":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v3

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c011f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "countrArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 607
    .local v2, "coutryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showFingerprintLockDialog()V
    .locals 5

    .prologue
    .line 499
    const v2, 0x7f0a1a91

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "popupmessage":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a1af3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ce

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 513
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 514
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 478
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 495
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 496
    return-void
.end method

.method private updatedRegisterCatergory(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 423
    if-ltz p1, :cond_2

    .line 424
    if-nez p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    const v1, 0x7f0a1aa0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 436
    :goto_0
    return-void

    .line 427
    :cond_0
    if-ne p1, v4, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    const v1, 0x7f0a1aac

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 429
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    const v1, 0x7f0a1aad

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 435
    :cond_2
    const-string v0, "FingerprintSettings"

    const-string v1, "[updatedRegisterCatergory] wrong value !!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    const-string v5, "FingerprintSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult : requestCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resultCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_2

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 204
    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a1a9b

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 232
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 233
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 236
    :cond_1
    return-void

    .line 206
    :cond_2
    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_0

    .line 207
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    .line 208
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 211
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 212
    .local v3, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v7, "isBiometricAuthenticationEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "isBiometricAuthenticationEnabled":I
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v5

    if-gtz v5, :cond_1

    .line 219
    :cond_3
    :try_start_0
    const-string v5, "previousStage"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "mStage":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKioskMode:Z

    if-nez v5, :cond_0

    const-string v5, "FingerprintSettings_register"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v5

    const/high16 v6, 0x20000

    if-lt v5, v6, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 223
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showFingerprintLockDialog()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 226
    .end local v4    # "mStage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "FingerprintSettings"

    const-string v6, "data is null!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 240
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 245
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->addPreferencesFromResource(I)V

    .line 247
    const-string v1, "support_web_signin"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/Preference;

    .line 248
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v3, "SEC_FLOATING_FEATURE_WEB_SUPPORT_FINGERPRINT_WEBSIGNIN"

    invoke-virtual {v1, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :cond_0
    const-string v1, "support_samsung_account"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/Preference;

    .line 252
    const-string v1, "register"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    .line 253
    const-string v1, "change_alternative_password"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    .line 254
    const-string v1, "paypal_payment"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPaypalPayment:Landroid/preference/Preference;

    .line 255
    const-string v1, "support_change_lock"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangeLock:Landroid/preference/Preference;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isSbrowserInstalled:Z

    .line 258
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->isSupportPayWithPaypal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPaypalPayment:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "true"

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "isKioskModeEnabled"

    invoke-static {v3, v4}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isKioskModeEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKioskMode:Z

    .line 264
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKioskMode:Z

    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangeLock:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_3
    sget v1, Lcom/android/settings/fingerprint/FingerprintSettings;->mDeviceProvisioned:I

    if-eq v1, v2, :cond_4

    .line 269
    const-string v1, "register_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_4
    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "USA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->setHasOptionsMenu(Z)V

    .line 277
    :cond_5
    return-void

    .line 262
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f0a1653

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 352
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 340
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:appid"

    const-string v2, "finger_scanner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "fingerprints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string v0, "FingerprintSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 309
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintChecked:Z

    .line 310
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum:I

    .line 311
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 357
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mPaypalPayment:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.sec.android.stub.paywithpaypal"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "FingerprintSettings"

    const-string v1, "Start PayWithPayPal in other package."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "com.sec.android.stub.paywithpaypal"

    const-string v1, "com.sec.android.stub.paywithpaypal.MainActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "FingerprintSettings"

    const-string v1, "Start PayWithPayPal in Settings."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1ac9

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegister:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 374
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    if-nez v0, :cond_0

    .line 375
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    .line 376
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v0

    if-lez v0, :cond_3

    .line 378
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->identifyFinger()V

    goto :goto_0

    .line 380
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v10, "mIntent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.fingerprint.FingerprintDisclaimer"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v0, "fingerIndex"

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v0, "previousStage"

    const-string v1, "FingerprintSettings_register"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const/16 v0, 0x3e8

    invoke-virtual {p0, v10, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 387
    .end local v10    # "mIntent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V

    goto :goto_0

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mAlternativePassword:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangePasswordListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v3, "com.android.settings.permission.unlock"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 394
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V

    goto/16 :goto_0

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangeLock:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 397
    const-string v5, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v6, 0x7f0a024a

    const/16 v7, 0x7b

    move-object v3, p0

    move-object v4, p0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const v3, 0x7f0a1a8e

    const v2, 0x7f0a1a8d

    const/4 v6, 0x0

    .line 281
    const-string v1, "FingerprintSettings"

    const-string v4, "onResume() "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "super_mOpenDetailMenu":Z
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 285
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 288
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z

    .line 290
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mWebSignIn:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getFingerprintVerification()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fingerprint_used_samsungaccount"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 293
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->isKioskMode:Z

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings;->mChangeLock:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getScreenLockSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings;->enrolledFingerprintNum()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->updatedRegisterCatergory(I)V

    .line 300
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 301
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 303
    return-void

    :cond_1
    move v1, v3

    .line 290
    goto :goto_0

    :cond_2
    move v2, v3

    .line 291
    goto :goto_1
.end method
