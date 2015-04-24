.class public Lcom/android/settings/fingerprint/FingerprintDisclaimer;
.super Landroid/app/Activity;
.source "FingerprintDisclaimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field isForODE:Z

.field private isFromKnox:Z

.field isKioskMode:Z

.field isSbrowserInstalled:Z

.field private mCancel:Landroid/widget/Button;

.field private mContinue:Landroid/widget/Button;

.field private mCurrentOrientation:I

.field private mDoNotShow:Landroid/widget/CheckBox;

.field mFingerprintIndex:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsFromKnoxSetupWizard:Z

.field private mLeftSideView:Landroid/view/View;

.field private mOwnName:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field mPreviousStage:Ljava/lang/String;

.field private mRequestedQuality:I

.field private mRightSideView:Landroid/view/View;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    .line 42
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    .line 56
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    .line 57
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    .line 58
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    .line 59
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    .line 60
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    .line 61
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    .line 62
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    .line 63
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    .line 64
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isSbrowserInstalled:Z

    .line 78
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    .line 79
    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCurrentOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private isSupportPayWithPaypal()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 297
    const-string v4, "ro.csc.countryiso_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "countryIso":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v3

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c011f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "countrArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    .local v2, "coutryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private makeFingerPrintDescString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isSbrowserInstalled:Z

    .line 275
    const-string v0, "&#8226 "

    .line 277
    .local v0, "bullet":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1a9f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/><br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "s":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1a8f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_WEB_SUPPORT_FINGERPRINT_WEBSIGNIN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1abd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ac2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isSupportPayWithPaypal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ac9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_2
    const-string v2, "VZW"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1a9e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_3
    return-object v1
.end method

.method private putKnoxPasswordPolicy(Landroid/content/Intent;)V
    .locals 2
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 336
    const-string v0, "isFromKnoxSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string v0, "lockscreen.password_min"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v0, "lockscreen.password_max"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v0, "lockscreen.password_type"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 341
    const-string v0, "lockscreen.password_min_letters"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    const-string v0, "lockscreen.password_min_lowercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v0, "lockscreen.password_min_uppercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v0, "lockscreen.password_min_numeric"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v0, "lockscreen.password_min_symbols"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v0, "lockscreen.password_min_nonletter"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    :cond_0
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 319
    return-void
.end method

.method private setPolicyFromKnox(Landroid/content/Intent;)V
    .locals 5
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    .line 323
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLength:I

    .line 324
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_max"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMaxLength:I

    .line 325
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 326
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_letters"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLetters:I

    .line 327
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_uppercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinUpperCase:I

    .line 328
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinLowerCase:I

    .line 329
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_numeric"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNumeric:I

    .line 330
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_symbols"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinSymbols:I

    .line 331
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    const-string v1, "lockscreen.password_min_nonletter"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPasswordMinNonLetter:I

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendIntentToKnoxKeyguard(I)V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_disclaimer_noti"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 241
    const-class v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    :goto_1
    const-string v3, "fingerIndex"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v3, "previousStage"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v3, "for_ode"

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v3, "ownName"

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v3, :cond_1

    .line 252
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    .line 254
    :cond_1
    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 243
    :cond_2
    const-class v3, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 258
    .end local v2    # "mIntent":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "enrollResult"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v4, v1}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setResult(ILandroid/content/Intent;)V

    .line 262
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendIntentToKnoxKeyguard(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x7f1001df
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 113
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "pref_disclaimer_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    .local v0, "do_not_show_again":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 115
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCurrentOrientation:I

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->recreate()V

    .line 119
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCurrentOrientation:I

    .line 126
    invoke-static {p0, v12}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 128
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "true"

    const-string v10, "isKioskModeEnabled"

    invoke-static {p0, v10}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "isKioskModeEnabled"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isKioskMode:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 133
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "is_knox"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    .line 134
    const-string v7, "isFromKnoxSetupWizard"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    .line 135
    iget-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v7, :cond_0

    .line 136
    const-string v7, "FingerprintDisclaimer"

    const-string v10, "isFromKnoxSetupWizard - FingerprintDisclaimer OnCreate()"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setPolicyFromKnox(Landroid/content/Intent;)V

    .line 143
    :cond_0
    :try_start_0
    const-string v7, "for_ode"

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    .line 145
    const-string v7, "previousStage"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    .line 146
    const-string v7, "fingerIndex"

    const/4 v10, -0x1

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    .line 147
    const-string v7, "ownName"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    const-string v7, "FingerprintDisclaimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[previousStage] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v7, "FingerprintDisclaimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[mOwnName] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v7, "FingerprintDisclaimer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[fingerIndex] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 161
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "pref_disclaimer_noti"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 163
    .local v0, "do_not_show_again":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 165
    .local v6, "window":Landroid/view/Window;
    if-eqz v6, :cond_1

    .line 166
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 167
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v7, v7, 0x400

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 169
    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 173
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v8, :cond_6

    .line 174
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 175
    .local v4, "mIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 176
    const-class v7, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    :goto_2
    const-string v7, "fingerIndex"

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v7, "previousStage"

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v7, "for_ode"

    iget-boolean v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 186
    const-string v7, "ownName"

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mIsFromKnoxSetupWizard:Z

    if-eqz v7, :cond_3

    .line 189
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    .line 191
    :cond_3
    const/16 v7, 0x3e9

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    .end local v4    # "mIntent":Landroid/content/Intent;
    :goto_3
    return-void

    .end local v0    # "do_not_show_again":Ljava/lang/Boolean;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    move v7, v9

    .line 128
    goto/16 :goto_0

    .line 148
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, ""

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mPreviousStage:Ljava/lang/String;

    .line 150
    const-string v7, ""

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mOwnName:Ljava/lang/String;

    .line 151
    iput v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintIndex:I

    .line 153
    iput-boolean v9, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isForODE:Z

    goto/16 :goto_1

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "do_not_show_again":Ljava/lang/Boolean;
    .restart local v4    # "mIntent":Landroid/content/Intent;
    :cond_5
    const-class v7, Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 193
    .end local v4    # "mIntent":Landroid/content/Intent;
    :cond_6
    const v7, 0x7f0400c0

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->setContentView(I)V

    .line 194
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 195
    const v7, 0x7f1001dd

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    .line 196
    const v7, 0x7f1001e1

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    .line 197
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mLeftSideView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mRightSideView:Landroid/view/View;

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    .line 200
    :cond_7
    const v7, 0x7f1001de

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    .local v5, "mMessage":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const v7, 0x7f100167

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;

    .line 204
    const v7, 0x7f1001e0

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    .line 205
    const v7, 0x7f1001df

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCancel:Landroid/widget/Button;

    .line 207
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mDoNotShow:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer$1;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimer;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mCancel:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mContinue:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->isFromKnox:Z

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->sendIntentToKnoxKeyguard(I)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimer;->finish()V

    .line 226
    :cond_0
    return-void
.end method
