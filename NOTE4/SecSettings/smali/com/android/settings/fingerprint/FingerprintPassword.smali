.class public Lcom/android/settings/fingerprint/FingerprintPassword;
.super Lcom/android/settings/SettingsActivity;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
    }
.end annotation


# static fields
.field private static bFingerprintPassword:Z

.field private static isForODE:Z

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mFingerpintOwnName:Ljava/lang/String;

.field private static mFingerprintIndex:I

.field private static mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private static mFingerprintPreviousStage:Ljava/lang/String;

.field private static mIsFromKnoxAlreadyRegistered:Z

.field private static mIsFromKnoxEnforcePwd:Z

.field private static mIsFromKnoxSetupWizard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->bFingerprintPassword:Z

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 80
    sput v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    .line 88
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z

    .line 89
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z

    .line 90
    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0
    .param p0, "x0"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 66
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings/fingerprint/FingerprintPassword;->bFingerprintPassword:Z

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 66
    sput-boolean p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 66
    sput p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    return p0
.end method

.method public static getFingerPasswordQuality()I
    .locals 3

    .prologue
    .line 881
    const/high16 v0, 0x50000

    .line 883
    .local v0, "fingetPasswordQuality":I
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHAGALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/high16 v0, 0x40000

    .line 888
    :goto_0
    return v0

    .line 886
    :cond_0
    const/high16 v0, 0x50000

    goto :goto_0
.end method

.method public static getShortPasswordLength()I
    .locals 4

    .prologue
    .line 870
    const/4 v0, 0x4

    .line 871
    .local v0, "shortPasswordLength":I
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.product.name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHAGALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 874
    const/4 v0, 0x4

    .line 878
    :goto_0
    return v0

    .line 876
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 98
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v3, 0x7f0a087e

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    .local v2, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v3, "knoxEnforcePassword"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z

    .line 121
    const-string v3, "isFromKnoxFingerRegistered"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z

    .line 122
    const-string v3, "FingerprintPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called by KnoxKeyguard(fingerprint is already registered case) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v3, "FingerprintPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called by KnoxSettings or KnoxKeyguard(fingerprint is already registered case) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    .line 126
    const-string v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    .line 127
    const-string v3, "ownName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    const-string v3, "for_ode"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z

    .line 137
    const/4 v3, 0x2

    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 138
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "FingerprintPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mFingerprintPreviousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [mFingerprintIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " [mFingerpintOwnName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 144
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
