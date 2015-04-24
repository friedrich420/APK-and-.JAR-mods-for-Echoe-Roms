.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"


# static fields
.field static block_HelpStep2:Z


# instance fields
.field private bHelpMode:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mExplainImageView:Landroid/widget/ImageView;

.field private mExplainTextView:Landroid/widget/TextView;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 87
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 92
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 94
    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    .line 453
    new-instance v0, Lcom/android/settings/nfc/SBeam$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeam$4;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeam;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SBeam;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->createHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SBeam;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nfc/SBeam;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/nfc/SBeam;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeam;
    .param p1, "x1"    # Lcom/android/settings/helpdialog/TwHelpDialog;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private createHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 386
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 388
    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 391
    :cond_0
    sget-boolean v2, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    if-eqz v2, :cond_2

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 396
    const-string v2, "[SBeam]"

    const-string v3, "createHelpStep2Dialog() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400ea

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f10013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 399
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/nfc/SBeam$3;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/SBeam$3;-><init>(Lcom/android/settings/nfc/SBeam;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 410
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 411
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 412
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 413
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 414
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 415
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method private getActionBarView()Landroid/view/View;
    .locals 7

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 421
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 422
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar_container"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "resId":I
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public isHelp()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 428
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v4

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 435
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    move v3, v5

    .line 437
    .local v3, "mState":Z
    :goto_1
    if-nez v3, :cond_0

    .line 442
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.samsung.helphub"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 443
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    move v4, v5

    .line 444
    goto :goto_0

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "mState":Z
    :cond_2
    move v3, v4

    .line 435
    goto :goto_1

    .line 446
    .restart local v3    # "mState":Z
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    .line 112
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    .line 117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 124
    :cond_0
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 125
    .local v3, "padding":I
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v3, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 127
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0a039a

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    .line 136
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 139
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    if-eqz v2, :cond_1

    .line 142
    const-string v4, "fromHelp"

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    .line 143
    iget-boolean v4, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    if-eqz v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    .line 147
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    new-instance v5, Lcom/android/settings/nfc/SBeam$1;

    invoke-direct {v5, p0}, Lcom/android/settings/nfc/SBeam$1;-><init>(Lcom/android/settings/nfc/SBeam;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    new-instance v4, Lcom/android/settings/nfc/SBeam$2;

    invoke-direct {v4, p0}, Lcom/android/settings/nfc/SBeam$2;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 181
    invoke-virtual {p0, v8}, Lcom/android/settings/nfc/SBeam;->setHasOptionsMenu(Z)V

    .line 186
    :cond_1
    new-instance v4, Lcom/android/settings/nfc/SBeamEnabler;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/nfc/SBeam;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    :cond_3
    :goto_0
    return-void

    .line 198
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v4, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v4, "com.samsung.felica.action.NFCTYPE_STATUS_BF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->isHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    const v1, 0x7f0a0e57

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020131

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 313
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 215
    const v4, 0x7f0401ed

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100479

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    .line 218
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 222
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 223
    .local v2, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 226
    .end local v2    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/nfc/SBeam;->bHelpMode:Z

    if-eqz v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 233
    :goto_0
    if-eqz p3, :cond_1

    .line 234
    const-string v4, "FOCUS"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "focusPosition":Ljava/lang/String;
    const-string v4, "IMG"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    .line 236
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestFocus()Z

    .line 243
    .end local v1    # "focusPosition":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeam;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "actionBar":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 237
    .end local v0    # "actionBar":Landroid/view/View;
    .restart local v1    # "focusPosition":Ljava/lang/String;
    :cond_3
    const-string v4, "TEXT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 238
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_1

    .line 239
    :cond_4
    const-string v4, "SWITCH"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    .line 240
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->requestFocus()Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 285
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 287
    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 291
    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 293
    :cond_1
    sget-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "[SBeam]"

    const-string v1, "onDestroy called!!finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/nfc/SBeam;->block_HelpStep2:Z

    .line 298
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    :cond_4
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 259
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 262
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 346
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 322
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nfc/SBeam;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 323
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 325
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.samsung.helpplugin"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    const-string v4, "default"

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "helphub:section"

    const-string v5, "nfc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/SBeam;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "helphub:appid"

    const-string v5, "nfc"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v4, "helphub:screenid"

    const-string v5, "nfc_sub_sbeam"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/SBeam;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 274
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 268
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "FOCUS"

    const-string v1, "IMG"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mExplainTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const-string v0, "FOCUS"

    const-string v1, "TEXT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "FOCUS"

    const-string v1, "SWITCH"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
