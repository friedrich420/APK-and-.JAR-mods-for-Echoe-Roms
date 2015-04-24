.class public Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final MIN_PASSWORD_LENGTH:I

.field private static final THRESHOLD_OF_SEQUENTIAL_CHAR:I


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    .line 187
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 160
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 161
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 162
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 163
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 164
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 165
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 166
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 167
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 169
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getFingerPasswordQuality()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 171
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 193
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 197
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 617
    const/4 v2, 0x0

    .line 619
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 620
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 621
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 622
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 624
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 625
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 623
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 628
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 631
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 593
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v5, v6

    .line 594
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 595
    const-string v5, "0123456789"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 598
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 594
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 603
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v5, v6

    .line 604
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 605
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 606
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    sget v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 607
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 608
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 604
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleNext()V
    .locals 13

    .prologue
    const v12, 0x61000

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 637
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "pin":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    const/4 v1, 0x0

    .line 642
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_3

    .line 643
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    if-nez v1, :cond_2

    .line 645
    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 646
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 733
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 734
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    .line 649
    :cond_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    .line 650
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 652
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 653
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 654
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "knoxPin"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_5

    .line 658
    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 664
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 665
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 666
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v4, v12, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 667
    invoke-direct {p0, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 669
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v11, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 660
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 673
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->setPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 674
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$900()I

    move-result v6

    if-lt v6, v9, :cond_7

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$900()I

    move-result v6

    const/16 v7, 0xa

    if-gt v6, v7, :cond_7

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fingerprint_fingerIndex"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$900()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    :cond_7
    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->bFingerprintPassword:Z
    invoke-static {v9}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1002(Z)Z

    .line 680
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_a

    .line 681
    :cond_8
    const-string v6, "ChooseLockGeneric"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v6

    if-ne v6, v9, :cond_c

    .line 682
    :cond_9
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v4, v7, v12}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;II)V

    .line 686
    :goto_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeFingerPrintPassword(Ljava/lang/String;)V

    .line 688
    :cond_a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 689
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "knoxPin"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v6, "previousStage"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v6, "enrollResult"

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isenrolledFingerprint()Z

    move-result v6

    if-ne v6, v9, :cond_d

    .line 693
    const-string v6, "isenrolled"

    const-string v7, "true"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    :goto_4
    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 700
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 706
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v11, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 684
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;)V

    goto :goto_3

    .line 695
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v6, "isenrolled"

    const-string v7, "false"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 702
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smpw_key"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 710
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_f
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a1afd

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a1b06

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 723
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 726
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_10
    sget-object v6, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 727
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 728
    .local v5, "tmp":Ljava/lang/CharSequence;
    if-eqz v5, :cond_2

    move-object v6, v5

    .line 729
    check-cast v6, Landroid/text/Spannable;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v6, v10, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private isenrolledFingerprint()Z
    .locals 4

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "enrolledFingerprint":Z
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    .line 853
    .local v1, "fingerstatus":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 854
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 855
    const/4 v0, 0x1

    .line 853
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 858
    :cond_1
    return v0
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 864
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 866
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 763
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 766
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 768
    return-void
.end method

.method private updateUi()V
    .locals 10

    .prologue
    const v9, 0x7f0a0884

    const v8, 0x7f0a0881

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 785
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 787
    .local v1, "length":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    .line 788
    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    .line 789
    const v6, 0x7f0a02aa

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 829
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 830
    return-void

    .line 793
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 795
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 798
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0a02ac

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 799
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 804
    .end local v0    # "error":Ljava/lang/String;
    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_6

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v6

    if-nez v6, :cond_6

    .line 805
    :cond_3
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_4

    .line 806
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 827
    :goto_1
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_b

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 807
    :cond_4
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_5

    .line 808
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 810
    :cond_5
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a1ae7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 812
    :cond_6
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 813
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_7

    .line 814
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 815
    :cond_7
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_8

    .line 816
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 818
    :cond_8
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 819
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a1ae6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 822
    :cond_9
    const-string v6, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_a

    .line 823
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a1ae5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 825
    :cond_a
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_b
    move v4, v5

    .line 827
    goto :goto_2
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 458
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 459
    const v29, 0x7f0a138f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 588
    :goto_0
    return-object v29

    .line 461
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 462
    const v29, 0x7f0a138e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 468
    const v29, 0x7f0a02aa

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_3

    .line 471
    const v29, 0x7f0a02ae

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto :goto_0

    .line 473
    :cond_3
    const/16 v19, 0x0

    .line 474
    .local v19, "letters":I
    const/16 v23, 0x0

    .line 475
    .local v23, "numbers":I
    const/16 v20, 0x0

    .line 476
    .local v20, "lowercase":I
    const/16 v27, 0x0

    .line 477
    .local v27, "symbols":I
    const/16 v28, 0x0

    .line 478
    .local v28, "uppercase":I
    const/16 v22, 0x0

    .line 479
    .local v22, "nonletter":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 480
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 482
    .local v6, "c":C
    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v6, v0, :cond_4

    const/16 v29, 0x7f

    move/from16 v0, v29

    if-le v6, v0, :cond_5

    .line 483
    :cond_4
    const v29, 0x7f0a02b2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 485
    :cond_5
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v6, v0, :cond_6

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v6, v0, :cond_6

    .line 486
    add-int/lit8 v23, v23, 0x1

    .line 487
    add-int/lit8 v22, v22, 0x1

    .line 479
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 488
    :cond_6
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v6, v0, :cond_7

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v6, v0, :cond_7

    .line 489
    add-int/lit8 v19, v19, 0x1

    .line 490
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 491
    :cond_7
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v6, v0, :cond_8

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v6, v0, :cond_8

    .line 492
    add-int/lit8 v19, v19, 0x1

    .line 493
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 495
    :cond_8
    add-int/lit8 v27, v27, 0x1

    .line 496
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 499
    .end local v6    # "c":C
    :cond_9
    const/high16 v29, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    if-gtz v19, :cond_a

    if-lez v27, :cond_b

    .line 503
    :cond_a
    const v29, 0x7f0a02b0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 504
    :cond_b
    const/high16 v29, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 509
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v29, v0

    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 513
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 517
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 521
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 525
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 531
    :cond_11
    const/high16 v29, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    const/4 v4, 0x1

    .line 533
    .local v4, "alphabetic":Z
    :goto_3
    const/high16 v29, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    const/4 v5, 0x1

    .line 535
    .local v5, "alphanumeric":Z
    :goto_4
    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    :cond_12
    if-nez v19, :cond_15

    .line 536
    const v29, 0x7f0a02b3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 531
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_3

    .line 533
    .restart local v4    # "alphabetic":Z
    :cond_14
    const/4 v5, 0x0

    goto :goto_4

    .line 538
    .restart local v5    # "alphanumeric":Z
    :cond_15
    if-eqz v5, :cond_16

    if-nez v23, :cond_16

    .line 539
    const v29, 0x7f0a02b4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 542
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 543
    const v29, 0x7f0a02b7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 546
    :cond_17
    const/16 v21, 0x0

    .line 547
    .local v21, "mOldPassword":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    const-string v30, "true"

    aput-object v30, v25, v29

    .line 548
    .local v25, "selectionArgsForbStr":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getForbiddenStrings"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 550
    .local v7, "getForbiddenStrings":I
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v29, 0x0

    aput-object p1, v24, v29

    .line 551
    .local v24, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 552
    .local v14, "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 553
    .local v10, "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 554
    .local v12, "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 555
    .local v9, "getMaximumCharacterSequenceLength":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v29, 0x0

    aput-object p1, v26, v29

    const/16 v29, 0x1

    aput-object v21, v26, v29

    .line 556
    .local v26, "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 557
    .local v15, "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 558
    .local v11, "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 559
    .local v13, "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 560
    .local v16, "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 561
    .local v8, "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 563
    .local v18, "isPasswordPatternMatched":I
    if-nez v10, :cond_18

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_18

    if-nez v8, :cond_18

    if-nez v9, :cond_18

    if-eqz v11, :cond_1e

    .line 568
    :cond_18
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_19

    .line 569
    const v29, 0x7f0a1d52

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v10, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 571
    :cond_19
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_1a

    .line 572
    const v29, 0x7f0a1d51

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    add-int/lit8 v32, v9, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 574
    :cond_1a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_1b

    .line 575
    const v29, 0x7f0a1d53

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 577
    :cond_1b
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_1c

    .line 578
    const v29, 0x7f0a1d4f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 580
    :cond_1c
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 581
    const v29, 0x7f0a1d50

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 583
    :cond_1d
    if-nez v18, :cond_1e

    .line 584
    const v29, 0x7f0a02b6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 588
    :cond_1e
    const/16 v29, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 835
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 837
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    .line 838
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 842
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 421
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 422
    const-string v0, "FingerprintPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

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

    .line 423
    sparse-switch p1, :sswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 426
    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 427
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 753
    :goto_0
    return-void

    .line 741
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    .line 745
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x7f10009c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v2, 0x50000

    const/4 v3, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 239
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 245
    const-string v1, "ChooseLockPassword"

    const-string v4, "mCheckSimplePassword = false"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iput-boolean v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    .line 248
    const-string v1, "ChooseLockPassword"

    const-string v4, "mCheckSimplePassword = true"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "device_policy"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$002(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    .line 255
    :cond_1
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 256
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 258
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 259
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    sget v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    if-ge v1, v4, :cond_2

    .line 260
    sget v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 264
    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    const v4, 0x61000

    if-eq v1, v4, :cond_4

    :cond_3
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->isForODE:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$100()Z

    move-result v1

    if-ne v1, v7, :cond_5

    .line 267
    :cond_4
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-ge v1, v2, :cond_7

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 269
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v3, :cond_8

    move v1, v3

    :goto_1
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 274
    :cond_5
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 275
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const v2, 0x61000

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    .line 276
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 279
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    .line 281
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    .line 283
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    .line 285
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    .line 287
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 290
    const-string v1, "isFromKnoxFingerRegistered"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$202(Z)Z

    .line 291
    const-string v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$302(Z)Z

    .line 292
    const-string v1, "FingerprintPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FingerPassword_fromKNOX, mIsFromKnoxAlreadyRegistered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsFromKnoxSetupWizard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxSetupWizard:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$300()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 294
    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    .line 295
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 311
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 317
    :goto_3
    return-void

    .line 267
    :cond_7
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    goto/16 :goto_0

    .line 269
    :cond_8
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 296
    :cond_9
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxAlreadyRegistered:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 297
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$000()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    .line 298
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x60000

    if-ne v1, v2, :cond_6

    .line 299
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    if-le v1, v2, :cond_a

    .line 300
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    .line 302
    :cond_a
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    if-le v1, v2, :cond_b

    .line 303
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    .line 305
    :cond_b
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-le v1, v2, :cond_6

    .line 306
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto :goto_2

    .line 314
    :cond_c
    const-string v1, "FingerprintPassword"

    const-string v2, "mDPM is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 323
    const v8, 0x7f040040

    invoke-virtual {p1, v8, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 325
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f10009c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 326
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v8, 0x7f10009d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 328
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v8, 0x7f10009e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 336
    const v8, 0x7f10009a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 337
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 338
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 339
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v9, 0x2000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v8, v0, v9, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 344
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 346
    const v8, 0x7f100099

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 347
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 349
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 350
    .local v1, "currentType":I
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 353
    .local v2, "intent":Landroid/content/Intent;
    if-nez p3, :cond_2

    .line 354
    sget-object v8, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 365
    :cond_0
    :goto_0
    instance-of v8, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v8, :cond_1

    move-object v3, v0

    .line 366
    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 367
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    const/4 v6, 0x0

    .line 368
    .local v6, "titleid":I
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v8, "FingerprintSettings_changepassword"

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$400()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 370
    const v6, 0x7f0a1d7b

    .line 373
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 374
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-virtual {v3, v5}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    .end local v3    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "titleid":I
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v9, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;

    invoke-direct {v9, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 390
    return-object v7

    .line 356
    :cond_2
    const-string v8, "first_pin"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 357
    const-string v8, "ui_stage"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "state":Ljava/lang/String;
    const-string v8, "FingerprintPasswordFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateView : [mFirstPin] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " [state] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v4, :cond_0

    .line 360
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 361
    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    goto :goto_0

    .line 372
    .end local v4    # "state":Ljava/lang/String;
    .restart local v3    # "sa":Lcom/android/settings/SettingsActivity;
    .restart local v6    # "titleid":I
    :cond_3
    const v6, 0x7f0a1aea

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 756
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 757
    const-string v0, ""

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 758
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$902(I)I

    .line 759
    const-string v0, ""

    # setter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 760
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 772
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 775
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    .line 776
    const/4 v0, 0x1

    .line 778
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 407
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 408
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 396
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$700()Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    # getter for: Lcom/android/settings/fingerprint/FingerprintPassword;->mIsFromKnoxEnforcePwd:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->access$800()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 403
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 414
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 846
    return-void
.end method

.method protected updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 439
    .local v0, "previousStage":Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    .line 440
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    .line 444
    if-eq v0, p1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 447
    :cond_0
    return-void
.end method
