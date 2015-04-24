.class public Lcom/android/settings/fingerprint/FingerprintOnehandGrip;
.super Landroid/app/Activity;
.source "FingerprintOnehandGrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isEnrolled:Z

.field private isForODE:Z

.field private mCancel:Landroid/widget/Button;

.field private mContinue:Landroid/widget/Button;

.field mFingerprintIndex:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mGrip_image:Landroid/widget/ImageView;

.field private mIsFromKnoxSetupWizard:Z

.field private mOnehandDescription:Landroid/widget/TextView;

.field private mOwnName:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPreviousStage:Ljava/lang/String;

.field private mRequestedQuality:I

.field private selectedFingerIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mIsFromKnoxSetupWizard:Z

    .line 40
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    .line 41
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLength:I

    .line 42
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMaxLength:I

    .line 43
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLetters:I

    .line 44
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinUpperCase:I

    .line 45
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLowerCase:I

    .line 46
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNumeric:I

    .line 47
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinSymbols:I

    .line 48
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNonLetter:I

    .line 50
    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mFingerprintIndex:I

    .line 54
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isEnrolled:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isForODE:Z

    return-void
.end method

.method private putKnoxPasswordPolicy(Landroid/content/Intent;)V
    .locals 2
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    .line 208
    const-string v0, "isFromKnoxSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v0, "lockscreen.password_min"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v0, "lockscreen.password_max"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v0, "lockscreen.password_type"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 213
    const-string v0, "lockscreen.password_min_letters"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLetters:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v0, "lockscreen.password_min_lowercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v0, "lockscreen.password_min_uppercase"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v0, "lockscreen.password_min_numeric"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNumeric:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    const-string v0, "lockscreen.password_min_symbols"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinSymbols:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v0, "lockscreen.password_min_nonletter"

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    :cond_0
    return-void
.end method

.method private setPolicyFromKnox(Landroid/content/Intent;)V
    .locals 5
    .param p1, "mIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    .line 195
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLength:I

    .line 196
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_max"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMaxLength:I

    .line 197
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 198
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_letters"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLetters:I

    .line 199
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_uppercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinUpperCase:I

    .line 200
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinLowerCase:I

    .line 201
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_numeric"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNumeric:I

    .line 202
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_symbols"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinSymbols:I

    .line 203
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNonLetter:I

    const-string v1, "lockscreen.password_min_nonletter"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPasswordMinNonLetter:I

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    const-string v0, "FingerprintOnehandGrip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setResult(ILandroid/content/Intent;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 159
    :pswitch_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isEnrolled:Z

    if-nez v2, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->selectedFingerIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOwnName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "for_ode"

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isForODE:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    .line 177
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 181
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, "result_intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->selectedFingerIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v4, v1}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setResult(ILandroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_fingerIndex"

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->selectedFingerIndex:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f1001e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setRequestedOrientation(I)V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fingerIndex"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->selectedFingerIndex:I

    .line 88
    const-string v3, "FingerprintOnehandGrip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[selectedFingerIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->selectedFingerIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v3, "previousStage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPreviousStage:Ljava/lang/String;

    .line 90
    const-string v3, "FingerprintOnehandGrip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[previousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v3, "for_ode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isForODE:Z

    .line 94
    const-string v3, "ownName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOwnName:Ljava/lang/String;

    .line 95
    const-string v3, "FingerprintOnehandGrip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ownName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v3, "isFromKnoxSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mIsFromKnoxSetupWizard:Z

    .line 98
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mIsFromKnoxSetupWizard:Z

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "FingerprintOnehandGrip"

    const-string v4, "isFromKnoxSetupWizard - FingerprintOnehandGrip OnCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setPolicyFromKnox(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 109
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v3

    if-nez v3, :cond_3

    .line 110
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isEnrolled:Z

    .line 114
    :goto_0
    const v3, 0x7f0400c4

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setContentView(I)V

    .line 115
    const v3, 0x7f1001e6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mOnehandDescription:Landroid/widget/TextView;

    .line 116
    const v3, 0x7f1001e7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mGrip_image:Landroid/widget/ImageView;

    .line 118
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mGrip_image:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isNoteModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mGrip_image:Landroid/widget/ImageView;

    const v4, 0x7f0203bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_1
    const v3, 0x7f1001ea

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mContinue:Landroid/widget/Button;

    .line 122
    const v3, 0x7f1001e9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mCancel:Landroid/widget/Button;

    .line 124
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mCancel:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mContinue:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 128
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 129
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 131
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->isEnrolled:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintOnehandGrip;->finish()V

    .line 140
    :cond_0
    return-void
.end method
