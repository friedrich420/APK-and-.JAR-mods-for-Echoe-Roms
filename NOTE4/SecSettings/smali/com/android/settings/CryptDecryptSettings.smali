.class public Lcom/android/settings/CryptDecryptSettings;
.super Landroid/app/Fragment;
.source "CryptDecryptSettings.java"


# instance fields
.field private mBatteryWarning:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mParent:Landroid/app/Activity;

.field private mPasswordWarning:Landroid/widget/TextView;

.field private mPowerWarning:Landroid/view/View;

.field private mSDcardOngoingWarning:Landroid/view/View;

.field private mThis:Landroid/app/Fragment;

.field private mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 83
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 87
    new-instance v0, Lcom/android/settings/CryptDecryptSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptSettings$1;-><init>(Lcom/android/settings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/android/settings/CryptDecryptSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptSettings$2;-><init>(Lcom/android/settings/CryptDecryptSettings;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/CryptDecryptSettings;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mThis:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CryptDecryptSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CryptDecryptSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/CryptDecryptSettings;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptDecryptSettings;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 7
    .param p1, "request"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 247
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    .line 248
    .local v1, "quality":I
    const/high16 v4, 0x20000

    if-ge v1, v4, :cond_0

    .line 249
    const/4 v3, 0x0

    .line 260
    :goto_0
    return v3

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 253
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 254
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-nez v4, :cond_1

    .line 256
    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/android/settings/CryptDecryptSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v0, p1, v6, v6, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    goto :goto_0
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 286
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 287
    .local v0, "preference":Landroid/preference/Preference;
    const-class v1, Lcom/android/settings/CryptDecryptConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 288
    const v1, 0x7f0a100e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 289
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v3, v0}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a024a

    const/4 v7, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .local v0, "preferenceActivity":Lcom/android/settings/SettingsActivity;
    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v7

    .line 314
    .end local v0    # "preferenceActivity":Lcom/android/settings/SettingsActivity;
    :goto_0
    return v1

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .local v0, "preferenceActivity":Landroid/preference/PreferenceActivity;
    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    .line 307
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v1, v7

    .line 309
    goto :goto_0

    .line 311
    .end local v0    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v1, "CryptDecrypt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity/SettingsActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 229
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 231
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 237
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    const/16 v2, 0x37

    if-eq p1, v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 277
    const-string v2, "type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "type":I
    const-string v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-direct {p0, v1, v0}, Lcom/android/settings/CryptDecryptSettings;->showFinalConfirmation(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 161
    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    .line 162
    iput-object p0, p0, Lcom/android/settings/CryptDecryptSettings;->mThis:Landroid/app/Fragment;

    .line 163
    const-string v0, "CryptDecrypt"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    const v0, 0x7f040052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 171
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    .line 174
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/widget/TextView;

    const v1, 0x7f0a0234

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptDecryptSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mPasswordWarning:Landroid/widget/TextView;

    const v1, 0x7f0a1016

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CryptDecryptSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 196
    :cond_1
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 197
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 198
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    .line 202
    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mUserPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;

    iget v1, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    return-object v0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/CryptDecryptSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0a100f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 216
    return-void
.end method
