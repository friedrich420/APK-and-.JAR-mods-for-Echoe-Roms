.class public Lcom/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# static fields
.field static block_HelpStep2:Z


# instance fields
.field private final KEY_SBEAM:Ljava/lang/String;

.field bHelpMode:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcHelpText:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 76
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 78
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 86
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 87
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    .line 88
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActionBarLayout:Landroid/view/View;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcSettings;->bHelpMode:Z

    .line 98
    new-instance v0, Lcom/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcSettings$1;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 506
    const-string v0, "toggle_sbeam"

    iput-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->KEY_SBEAM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/nfc/NfcSettings;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/NfcSettings;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    return-object p1
.end method

.method private createHelpStep1Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 417
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 419
    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 423
    const-string v1, "NfcSettings"

    const-string v2, "createHelpStep1Dialog() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sput-boolean v3, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    .line 427
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 429
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400e2

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 432
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 435
    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 437
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private createHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 443
    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 446
    :cond_0
    sget-boolean v2, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    if-eqz v2, :cond_2

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    const-string v2, "NfcSettings"

    const-string v3, "createHelpStep2Dialog() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 454
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400e4

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/nfc/NfcSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcSettings$4;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 469
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 470
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 471
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 472
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    goto :goto_0
.end method

.method private initSbeamEnabler()V
    .locals 7

    .prologue
    .line 510
    iget-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 511
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v2

    .line 514
    .local v2, "isSBeamSupported":Z
    const-string v4, "toggle_sbeam"

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    .line 515
    .local v3, "sbeam":Landroid/preference/SwitchPreferenceScreen;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 516
    const-string v4, "android_beam_title"

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 517
    .local v0, "abeamCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 522
    .end local v0    # "abeamCategory":Landroid/preference/PreferenceCategory;
    :goto_0
    return-void

    .line 519
    :cond_1
    new-instance v4, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v4, v5, v3, v6}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    goto :goto_0
.end method

.method private onPauseSbeamEnabler()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 541
    :cond_0
    return-void
.end method

.method private onResumeSbeamEnabler()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mSbeamEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 487
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 488
    const/4 v2, 0x1

    .line 494
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 489
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isSupportRWP2p()Z
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v1, 0x7f070084

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 128
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 131
    new-instance v1, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 135
    .local v18, "padding":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    const/4 v6, -0x2

    const v8, 0x800015

    invoke-direct {v3, v4, v6, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 147
    .local v16, "intent":Landroid/content/Intent;
    if-eqz v16, :cond_0

    .line 148
    const-string v1, "fromHelp"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/nfc/NfcSettings;->bHelpMode:Z

    .line 149
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/nfc/NfcSettings;->bHelpMode:Z

    if-eqz v1, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActionBarLayout:Landroid/view/View;

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActionBarLayout:Landroid/view/View;

    new-instance v2, Lcom/android/settings/nfc/NfcSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/nfc/NfcSettings$2;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v17

    .line 172
    .local v17, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v17 .. v17}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 174
    new-instance v1, Lcom/android/settings/nfc/NfcSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/settings/nfc/NfcSettings$3;-><init>(Lcom/android/settings/nfc/NfcSettings;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    .line 217
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 221
    .end local v17    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_0
    const-string v1, "click_tap_pay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 223
    .local v7, "mTapPay":Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.nfc.hce"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    const-string v1, "nfc_tap_pay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    .line 225
    .local v20, "tapPayGroup":Landroid/preference/PreferenceGroup;
    if-eqz v20, :cond_1

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_1
    const/4 v7, 0x0

    .line 230
    .end local v20    # "tapPayGroup":Landroid/preference/PreferenceGroup;
    :cond_2
    const-string v1, "toggle_android_beam"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 232
    const-string v1, "cat_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceGroup;

    .line 233
    .local v19, "rwP2pCat":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const-string v1, "toggle_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    .line 239
    .local v5, "rwP2pSwitch":Landroid/preference/SwitchPreferenceScreen;
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 247
    .end local v5    # "rwP2pSwitch":Landroid/preference/SwitchPreferenceScreen;
    :goto_0
    const-string v1, "nfc_android_beam_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    .line 248
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v2, 0x7f0a0362

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 253
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->initSbeamEnabler()V

    .line 255
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    return-void

    .line 242
    :cond_4
    if-eqz v19, :cond_5

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_5
    new-instance v8, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/nfc/NfcSettings;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/nfc/NfcSettings;->mHelpCtrl:Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;

    const/4 v15, 0x0

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 348
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const v0, 0x7f0a0375

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 352
    :cond_0
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    const v0, 0x7f0a0e57

    invoke-interface {p1, v2, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020131

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 356
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 309
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 311
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 316
    iput-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 319
    :cond_1
    sget-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    const-string v0, "NfcSettings"

    const-string v1, "onDestroy called!!finish"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/NfcSettings;->block_HelpStep2:Z

    .line 324
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 411
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 365
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 366
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    if-eq v5, v4, :cond_0

    .line 370
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 375
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 377
    const-string v5, "default"

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "helphub:section"

    const-string v6, "nfc"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 391
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "helphub:appid"

    const-string v6, "nfc"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 405
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v0, "advanced_intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->onPauseSbeamEnabler()V

    .line 267
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 268
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "super_mOpenDetailMenu":Z
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 278
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 281
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcSettings;->onResumeSbeamEnabler()V

    .line 287
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 290
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 291
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v3, 0x7f0a0366

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 300
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 301
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 303
    return-void

    .line 292
    .restart local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 293
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v3, 0x7f0a0364

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 295
    iget-object v2, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcHelpText:Landroid/preference/Preference;

    const v3, 0x7f0a0365

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
