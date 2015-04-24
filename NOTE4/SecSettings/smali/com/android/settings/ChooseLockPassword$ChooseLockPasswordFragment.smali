.class public Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private cacCardLocked:Z

.field private cacRegistrationComplete:Z

.field private cacRegistrationError:Z

.field private cacRegistrationResult:Ljava/lang/String;

.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private isB2CContainer:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCacChosen:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDialog:Landroid/app/ProgressDialog;

.field private mDone:Z

.field private mEmergencyCall:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPassword:Ljava/lang/String;

.field private mOrientation:I

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdChangeEnforceStatus:I

.field private mPwdChangeTimeout:I

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private personaInfo:Landroid/content/pm/PersonaInfo;

.field private setKnoxBackupPinComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 228
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 229
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 230
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 231
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 232
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 233
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 234
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 235
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 236
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 238
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 240
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 241
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 259
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 260
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 261
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 265
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    .line 271
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 272
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 274
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 275
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 277
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    .line 282
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    .line 283
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    .line 287
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 303
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 345
    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    return-object p1
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 958
    const/4 v2, 0x0

    .line 960
    .local v2, "nLoop":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 961
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 962
    .local v0, "beforeChar":C
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 963
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 965
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 966
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

    .line 972
    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 964
    .restart local v0    # "beforeChar":C
    .restart local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 969
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "beforeChar":C
    .end local v1    # "i":I
    :cond_2
    move v3, v4

    .line 972
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 934
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 935
    .local v1, "maxLoop":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 936
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "pattern":Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 939
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :goto_1
    return v4

    .line 935
    .restart local v2    # "pattern":Ljava/lang/String;
    .restart local v3    # "reversePattern":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 944
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 945
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 946
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 947
    .restart local v2    # "pattern":Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 948
    .restart local v3    # "reversePattern":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 949
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 945
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 954
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "reversePattern":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 1537
    monitor-enter p0

    .line 1538
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1541
    :cond_0
    monitor-exit p0

    .line 1542
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private executeCacRegistration(Ljava/lang/String;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1164
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1264
    return-void
.end method

.method private getDeviceOrientation()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1135
    .local v1, "orientation":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1136
    .local v2, "rotation":I
    const/4 v0, -0x1

    .line 1140
    .local v0, "actual_orientation":I
    if-ne v1, v5, :cond_2

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_2

    .line 1143
    :cond_0
    const/4 v0, 0x0

    .line 1160
    :cond_1
    :goto_0
    return v0

    .line 1144
    :cond_2
    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_4

    .line 1147
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1148
    :cond_4
    if-ne v1, v5, :cond_6

    if-eq v2, v5, :cond_5

    if-ne v2, v6, :cond_6

    .line 1151
    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 1153
    :cond_6
    if-ne v1, v4, :cond_1

    if-eq v2, v5, :cond_7

    if-ne v2, v6, :cond_1

    .line 1156
    :cond_7
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private handleNext()V
    .locals 17

    .prologue
    .line 977
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    if-eqz v1, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 980
    .local v12, "pin":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 983
    const/4 v7, 0x0

    .line 984
    .local v7, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    .line 985
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage Introduction: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    .line 987
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 988
    if-nez v7, :cond_2

    .line 989
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 1122
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 1123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1125
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Changing/creating screen lock password failed"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_10

    .line 996
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x40000

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v2, 0x60000

    if-gt v1, v2, :cond_4

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 1000
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/KnoxChooseLockBackupPin;

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1001
    const/16 v1, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1007
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1009
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_6

    .line 1011
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1012
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin failed: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1015
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_0

    .line 1019
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z

    if-nez v1, :cond_6

    .line 1020
    const-string v1, "ChooseLockPassword"

    const-string v2, "Stage confirm cac pin to be executed: "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 1028
    .local v10, "isFallback":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_require_password"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 1030
    .local v13, "required":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v13}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Block"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1033
    .local v9, "isBlock":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.signature_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1038
    .local v11, "isSignature":Z
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_a

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 1046
    :goto_2
    if-eqz v9, :cond_b

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v12, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockSmartUnlock()V

    .line 1049
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1058
    :goto_3
    if-nez v10, :cond_7

    if-nez v11, :cond_7

    .line 1059
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v16, "warningClearIntent":Landroid/content/Intent;
    const-string v1, "android.settings.SECURITY_WARNING_CLEAR"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1067
    .end local v16    # "warningClearIntent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1068
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1075
    :goto_4
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v1, v2, v8, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1078
    .local v14, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v3, "setPwdChangeRequested"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "lockscreen.biometric_weak_with_voice_fallback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1091
    :goto_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1096
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 1098
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_9

    .line 1106
    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Changing/creating screen lock password succeeded"

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1042
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v14    # "sender":Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto/16 :goto_2

    .line 1053
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v12, v2, v10, v11}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1070
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "is_smpw_key"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 1087
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v14    # "sender":Landroid/app/PendingIntent;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_face_with_voice"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 1110
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "isBlock":Z
    .end local v10    # "isFallback":Z
    .end local v11    # "isSignature":Z
    .end local v13    # "required":Z
    .end local v14    # "sender":Landroid/app/PendingIntent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 1111
    .local v15, "tmp":Ljava/lang/CharSequence;
    if-eqz v15, :cond_f

    move-object v1, v15

    .line 1112
    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1114
    :cond_f
    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto/16 :goto_1

    .line 1118
    .end local v15    # "tmp":Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_2

    .line 1119
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 1550
    monitor-enter p0

    .line 1551
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 1552
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1556
    :cond_0
    monitor-exit p0

    .line 1557
    return-void

    .line 1556
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleNextPwdChange(II)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const v6, 0xea60

    mul-int/2addr v6, p2

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1379
    .local v2, "when":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1380
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v4, v5, v0, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1382
    .local v1, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1384
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1386
    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 1391
    # getter for: Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    const-string v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.knox.containeragent2.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v0, "knoxIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.containeragent2"

    const-string v3, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1395
    const-string v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1398
    .end local v0    # "knoxIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "next"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    const/4 v3, 0x1

    .line 1402
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1405
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1407
    return-void
.end method

.method private updateUi()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1424
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 1428
    .local v3, "length":I
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v7, :cond_2

    .line 1430
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v8, :cond_0

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v8, v7, :cond_1

    :cond_0
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    :cond_1
    move v1, v7

    .line 1435
    .local v1, "enforceWithoutCancel":Z
    :goto_0
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_4

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_4

    .line 1436
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1437
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 1445
    .end local v1    # "enforceWithoutCancel":Z
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_a

    if-lez v3, :cond_a

    .line 1447
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v8, :cond_5

    .line 1448
    const-string v8, "ChooseLockPassword"

    const-string v9, "CAC registration not locked: "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v8, :cond_5

    .line 1451
    const-string v6, "ChooseLockPassword"

    const-string v8, "CAC registration not locked enable next: "

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1453
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setClickable(Z)V

    .line 1454
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 1507
    :goto_2
    return-void

    :cond_3
    move v1, v6

    .line 1430
    goto :goto_0

    .line 1439
    .restart local v1    # "enforceWithoutCancel":Z
    :cond_4
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1440
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_1

    .line 1460
    .end local v1    # "enforceWithoutCancel":Z
    :cond_5
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v3, v8, :cond_8

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-nez v8, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_8

    .line 1462
    const/4 v4, 0x0

    .line 1464
    .local v4, "msg":Ljava/lang/String;
    :try_start_0
    iget-boolean v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v7, :cond_7

    const v7, 0x7f0a02aa

    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1469
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1506
    .end local v4    # "msg":Ljava/lang/String;
    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 1464
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_7
    const v7, 0x7f0a02ab

    goto :goto_3

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1469
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1469
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setEnabled(Z)V

    throw v7

    .line 1473
    .end local v4    # "msg":Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 1475
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1476
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1479
    :cond_9
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z

    if-nez v6, :cond_6

    .line 1480
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f0a02ac

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1481
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1489
    .end local v2    # "error":Ljava/lang/String;
    :cond_a
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v8, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-ge v8, v10, :cond_c

    .line 1491
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_b

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-ne v8, v7, :cond_b

    .line 1492
    const-string v8, "ChooseLockPassword"

    const-string v9, "CAC registration error back to Select: "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    :goto_5
    iput-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    .line 1504
    :goto_6
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v3, :cond_e

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 1496
    :cond_b
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v9, v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->cacNumeric:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 1501
    :cond_c
    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_8
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v8, v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_8

    :cond_e
    move v7, v6

    .line 1504
    goto :goto_7
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 726
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    .line 727
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 729
    const v29, 0x7f0a138d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 928
    :goto_0
    return-object v29

    .line 731
    :cond_0
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    aput-object p1, v23, v29

    .line 732
    .local v23, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 733
    .local v14, "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 734
    .local v10, "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 735
    .local v12, "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 736
    .local v9, "getMaximumCharacterSequenceLength":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    aput-object p1, v25, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v25, v29

    .line 737
    .local v25, "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 738
    .local v15, "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 739
    .local v11, "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 740
    .local v13, "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 741
    .local v16, "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 742
    .local v8, "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 744
    .local v18, "isPasswordPatternMatched":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_1

    .line 745
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 747
    :cond_1
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_2

    .line 748
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 750
    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_3

    .line 751
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 753
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_4

    .line 754
    const v29, 0x7f0a1d4f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 756
    :cond_4
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 757
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 759
    :cond_5
    if-nez v18, :cond_6

    .line 760
    const v29, 0x7f0a02b6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 762
    :cond_6
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 767
    .end local v8    # "getMaximumCharacterOccurences":I
    .end local v9    # "getMaximumCharacterSequenceLength":I
    .end local v10    # "getMaximumNumericSequenceLength":I
    .end local v11    # "getMinimumCharacterChangeLength":I
    .end local v12    # "hasForbiddenCharacterSequence":I
    .end local v13    # "hasForbiddenData":I
    .end local v14    # "hasForbiddenNumericSequence":I
    .end local v15    # "hasForbiddenStringDistance":I
    .end local v16    # "hasMaxRepeatedCharacters":I
    .end local v18    # "isPasswordPatternMatched":I
    .end local v23    # "selectionArgs":[Ljava/lang/String;
    .end local v25    # "selectionArgsStrDist":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 768
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 769
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const v29, 0x7f0a138f

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_8
    const v29, 0x7f0a1391

    goto :goto_1

    .line 773
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 774
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    const v29, 0x7f0a138e

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_a
    const v29, 0x7f0a1390

    goto :goto_2

    .line 781
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 782
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    const v29, 0x7f0a02aa

    :goto_3
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_c
    const v29, 0x7f0a02ab

    goto :goto_3

    .line 786
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_f

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    const v29, 0x7f0a02ae

    :goto_4
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_e
    const v29, 0x7f0a02af

    goto :goto_4

    .line 791
    :cond_f
    const/16 v19, 0x0

    .line 792
    .local v19, "letters":I
    const/16 v22, 0x0

    .line 793
    .local v22, "numbers":I
    const/16 v20, 0x0

    .line 794
    .local v20, "lowercase":I
    const/16 v27, 0x0

    .line 795
    .local v27, "symbols":I
    const/16 v28, 0x0

    .line 796
    .local v28, "uppercase":I
    const/16 v21, 0x0

    .line 797
    .local v21, "nonletter":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    .line 798
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 800
    .local v6, "c":C
    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v6, v0, :cond_10

    const/16 v29, 0x7f

    move/from16 v0, v29

    if-le v6, v0, :cond_11

    .line 801
    :cond_10
    const v29, 0x7f0a02b2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 803
    :cond_11
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v6, v0, :cond_12

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v6, v0, :cond_12

    .line 804
    add-int/lit8 v22, v22, 0x1

    .line 805
    add-int/lit8 v21, v21, 0x1

    .line 797
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 806
    :cond_12
    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v6, v0, :cond_13

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v6, v0, :cond_13

    .line 807
    add-int/lit8 v19, v19, 0x1

    .line 808
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 809
    :cond_13
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v6, v0, :cond_14

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v6, v0, :cond_14

    .line 810
    add-int/lit8 v19, v19, 0x1

    .line 811
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 813
    :cond_14
    add-int/lit8 v27, v27, 0x1

    .line 814
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 817
    .end local v6    # "c":C
    :cond_15
    const/high16 v29, 0x20000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_16

    const/high16 v29, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 819
    :cond_16
    if-gtz v19, :cond_17

    if-lez v27, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    move/from16 v29, v0

    if-gtz v29, :cond_18

    .line 822
    const v29, 0x7f0a02b0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 825
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v26

    .line 827
    .local v26, "sequence":I
    const/high16 v29, 0x30000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    const/16 v29, 0x3

    move/from16 v0, v26

    move/from16 v1, v29

    if-le v0, v1, :cond_27

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_27

    .line 830
    const v29, 0x7f0a02b8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 832
    .end local v26    # "sequence":I
    :cond_19
    const/high16 v29, 0x60000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1f

    .line 833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v29, v0

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 837
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 841
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_1c

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 845
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1d

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 849
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_1e

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110005

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 853
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f110006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 859
    :cond_1f
    const/high16 v29, 0x70000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v29

    const/16 v30, 0x64

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_22

    .line 865
    if-gtz v19, :cond_20

    if-lez v27, :cond_21

    .line 866
    :cond_20
    const v29, 0x7f0a027d

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 868
    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 871
    :cond_22
    const/high16 v29, 0x40000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    const/4 v4, 0x1

    .line 873
    .local v4, "alphabetic":Z
    :goto_7
    const/high16 v29, 0x50000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_25

    const/4 v5, 0x1

    .line 875
    .local v5, "alphanumeric":Z
    :goto_8
    if-nez v4, :cond_23

    if-eqz v5, :cond_26

    :cond_23
    if-nez v19, :cond_26

    .line 876
    const v29, 0x7f0a02b3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 871
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_7

    .line 873
    .restart local v4    # "alphabetic":Z
    :cond_25
    const/4 v5, 0x0

    goto :goto_8

    .line 878
    .restart local v5    # "alphanumeric":Z
    :cond_26
    if-eqz v5, :cond_27

    if-nez v22, :cond_27

    .line 879
    const v29, 0x7f0a02b4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 882
    .end local v4    # "alphabetic":Z
    .end local v5    # "alphanumeric":Z
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_29

    .line 883
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_28

    const v29, 0x7f0a02b7

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    :cond_28
    const v29, 0x7f0a02b1

    goto :goto_9

    .line 887
    :cond_29
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v29, 0x0

    const-string v30, "true"

    aput-object v30, v24, v29

    .line 888
    .local v24, "selectionArgsForbStr":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getForbiddenStrings"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 890
    .local v7, "getForbiddenStrings":I
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    aput-object p1, v23, v29

    .line 891
    .restart local v23    # "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenNumericSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 892
    .restart local v14    # "hasForbiddenNumericSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumNumericSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 893
    .restart local v10    # "getMaximumNumericSequenceLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 894
    .restart local v12    # "hasForbiddenCharacterSequence":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterSequenceLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 895
    .restart local v9    # "getMaximumCharacterSequenceLength":I
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v29, 0x0

    aput-object p1, v25, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v25, v29

    .line 896
    .restart local v25    # "selectionArgsStrDist":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenStringDistance"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 897
    .restart local v15    # "hasForbiddenStringDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMinimumCharacterChangeLength"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 898
    .restart local v11    # "getMinimumCharacterChangeLength":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasForbiddenData"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 899
    .restart local v13    # "hasForbiddenData":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 900
    .restart local v16    # "hasMaxRepeatedCharacters":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v31, "getMaximumCharacterOccurences"

    const/16 v32, 0x0

    invoke-static/range {v29 .. v32}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 901
    .restart local v8    # "getMaximumCharacterOccurences":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const-string v30, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v31, "isPasswordPatternMatched"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 903
    .restart local v18    # "isPasswordPatternMatched":I
    if-nez v10, :cond_2a

    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v7, v0, :cond_2a

    if-nez v8, :cond_2a

    if-nez v9, :cond_2a

    if-eqz v11, :cond_30

    .line 908
    :cond_2a
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_2b

    .line 909
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 911
    :cond_2b
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_2c

    .line 912
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 914
    :cond_2c
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_2d

    .line 915
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 917
    :cond_2d
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v13, v0, :cond_2e

    .line 918
    const v29, 0x7f0a1d4f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 920
    :cond_2e
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 921
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

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 923
    :cond_2f
    if-nez v18, :cond_30

    .line 924
    const v29, 0x7f0a02b6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_0

    .line 928
    :cond_30
    const/16 v29, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z

    if-nez v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 1516
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 1518
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 1520
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1524
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 678
    sparse-switch p1, :sswitch_data_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 680
    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 683
    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 692
    :sswitch_1
    if-eqz p2, :cond_1

    .line 693
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 694
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 696
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 697
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 678
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 1268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1270
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 1274
    :sswitch_1
    const-string v8, "ChooseLockPassword"

    const-string v9, "canceled"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1279
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v1, :cond_7

    .line 1281
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-gtz v8, :cond_1

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-eq v8, v1, :cond_2

    :cond_1
    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lt v8, v10, :cond_5

    .line 1285
    .local v1, "enforceWithoutCancel":Z
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_6

    .line 1287
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-lt v8, v9, :cond_4

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_3

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v10, :cond_4

    .line 1290
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1291
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 1294
    :cond_4
    if-nez v1, :cond_0

    .line 1296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1299
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1302
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1303
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v1    # "enforceWithoutCancel":Z
    :cond_5
    move v1, v7

    .line 1281
    goto :goto_1

    .line 1307
    .restart local v1    # "enforceWithoutCancel":Z
    :cond_6
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1308
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1315
    .end local v1    # "enforceWithoutCancel":Z
    :cond_7
    sget-boolean v8, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v8, :cond_a

    .line 1317
    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v9, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v8, v9, :cond_8

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-ne v8, v1, :cond_8

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    if-lez v8, :cond_8

    .line 1321
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    invoke-direct {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->scheduleNextPwdChange(II)V

    .line 1322
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1323
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1326
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v7, v8, :cond_9

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_0

    .line 1327
    :cond_9
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 1328
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1335
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->sendIntentToKnoxKeyguard(I)V

    .line 1338
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1345
    :sswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 1348
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 1349
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1350
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1351
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_b

    .line 1352
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1353
    .local v2, "i":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1354
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1355
    .local v6, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, "pkgName":Ljava/lang/String;
    const-string v7, "com.android.phone"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1358
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1366
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_b
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1369
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1268
    :sswitch_data_0
    .sparse-switch
        0x7f10009c -> :sswitch_1
        0x7f10009d -> :sswitch_0
        0x7f1000a8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 636
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 638
    .local v0, "cursorPos":I
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onDestroyView()V

    .line 639
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 647
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 652
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 350
    new-instance v10, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 352
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    instance-of v10, v10, Lcom/android/settings/ChooseLockPassword;

    if-nez v10, :cond_0

    .line 353
    new-instance v10, Ljava/lang/SecurityException;

    const-string v11, "Fragment contained in wrong activity"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 357
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 358
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 360
    :cond_1
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 361
    const-string v10, "ChooseLockPassword"

    const-string v11, "mCheckSimplePassword = false"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 363
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 364
    const-string v10, "ChooseLockPassword"

    const-string v11, "mCheckSimplePassword = true"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_3

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 371
    .local v5, "mPersona":Landroid/os/PersonaManager;
    if-eqz v5, :cond_3

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    .line 373
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->personaInfo:Landroid/content/pm/PersonaInfo;

    iget-boolean v10, v10, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v10, :cond_3

    .line 374
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isB2CContainer:Z

    .line 375
    const-string v10, "ChooseLockPassword"

    const-string v11, "this is B2C Container."

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v5    # "mPersona":Landroid/os/PersonaManager;
    :cond_3
    const-string v10, "key_knox_b2c_reset_case"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    # setter for: Lcom/android/settings/ChooseLockPassword;->isKnoxB2CResetCase:Z
    invoke-static {v10}, Lcom/android/settings/ChooseLockPassword;->access$002(Z)Z

    .line 382
    const-string v10, "lockscreen.password_type"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 384
    const-string v10, "lockscreen.password_min"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 387
    const-string v10, "lockscreen.password_max"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 388
    const-string v10, "lockscreen.password_min_letters"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 390
    const-string v10, "lockscreen.password_min_uppercase"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 392
    const-string v10, "lockscreen.password_min_lowercase"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 394
    const-string v10, "lockscreen.password_min_numeric"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 396
    const-string v10, "lockscreen.password_min_symbols"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 398
    const-string v10, "lockscreen.password_min_nonletter"

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 402
    const-string v10, "ode_password_quality"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "odePasswordQuality":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v10

    if-nez v10, :cond_5

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 407
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 408
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "password"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 409
    :cond_4
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x20000

    if-ne v10, v11, :cond_e

    .line 410
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 428
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_5
    :goto_0
    const-string v10, "lockscreen.password_old"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOldPassword:Ljava/lang/String;

    .line 429
    const/4 v0, 0x4

    .line 430
    .local v0, "MIN_PWD_LENGTH":I
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v11, 0x4

    if-lt v10, v11, :cond_12

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v10, v11, :cond_12

    .line 438
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "statusbar"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/StatusBarManager;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 445
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "true"

    aput-object v11, v9, v10

    .line 446
    .local v9, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v12, "getRequiredPwdPatternRestrictions"

    invoke-static {v10, v11, v12, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 449
    .local v2, "getRequiredPwdPatternRestrictions":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_7

    .line 450
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 452
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v12, "isChangeRequested"

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 454
    .local v4, "isChangeRequested":I
    iput v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    .line 455
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v10, :cond_8

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/settings/ChooseLockPassword;

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V
    invoke-static {v10, v11}, Lcom/android/settings/ChooseLockPassword;->access$100(Lcom/android/settings/ChooseLockPassword;Z)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 458
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v10

    const/high16 v11, 0x20000

    if-lt v10, v11, :cond_8

    .line 459
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 462
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string v12, "getPasswordChangeTimeout"

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeTimeout:I

    .line 466
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v11, 0x4

    if-ge v10, v11, :cond_9

    .line 467
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 469
    :cond_9
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    const/16 v11, 0x10

    if-le v10, v11, :cond_a

    .line 470
    const/16 v10, 0x10

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 474
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-lt v10, v11, :cond_b

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "persona"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    .line 476
    .local v8, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v7

    .line 477
    .local v7, "pi":Landroid/content/pm/PersonaInfo;
    iget v10, v7, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v10}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v10

    sget-object v11, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v10, v11}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 482
    .end local v7    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v8    # "pm":Landroid/os/PersonaManager;
    :cond_b
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 488
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_d

    .line 490
    const-string v10, "choose_cac_pin"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_14

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v10

    const/high16 v11, 0x70000

    if-ne v10, v11, :cond_14

    :cond_c
    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    .line 496
    :cond_d
    return-void

    .line 412
    .end local v0    # "MIN_PWD_LENGTH":I
    .end local v2    # "getRequiredPwdPatternRestrictions":I
    .end local v4    # "isChangeRequested":I
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_e
    const/4 v10, 0x6

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 416
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "password"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 417
    :cond_10
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v11, 0x20000

    if-ne v10, v11, :cond_11

    .line 418
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 420
    :cond_11
    const/4 v10, 0x6

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 432
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "MIN_PWD_LENGTH":I
    :cond_12
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/4 v11, 0x4

    if-ge v10, v11, :cond_13

    .line 433
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 434
    :cond_13
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_6

    .line 435
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_1

    .line 490
    .restart local v2    # "getRequiredPwdPatternRestrictions":I
    .restart local v4    # "isChangeRequested":I
    .restart local v9    # "selectionArgs":[Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 503
    const v10, 0x7f040040

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 505
    .local v9, "view":Landroid/view/View;
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 508
    const v10, 0x7f1000a8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 509
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 510
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    :cond_0
    const v10, 0x7f10009c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 523
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    sget-boolean v10, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_1

    .line 526
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 527
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 531
    :cond_1
    const v10, 0x7f10009d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 532
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    new-instance v10, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 535
    const/high16 v10, 0x40000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    const/high16 v10, 0x50000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    const/high16 v10, 0x60000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_2

    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v10, :cond_5

    const/high16 v10, 0x70000

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_5

    :cond_2
    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 541
    const v10, 0x7f10009e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 542
    const v10, 0x7f10009a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 543
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 544
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 545
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v11, 0x2000000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 548
    .local v1, "activity":Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 550
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 554
    const v10, 0x7f100099

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 555
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 557
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 558
    .local v3, "currentType":I
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_7

    .end local v3    # "currentType":I
    :goto_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 562
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 563
    .local v2, "confirmCredentials":Z
    if-nez p3, :cond_8

    .line 564
    sget-object v10, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 565
    if-eqz v2, :cond_3

    .line 566
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 580
    :cond_3
    :goto_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDone:Z

    .line 581
    instance-of v10, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v10, :cond_4

    move-object v6, v1

    .line 582
    check-cast v6, Lcom/android/settings/SettingsActivity;

    .line 586
    .local v6, "sa":Lcom/android/settings/SettingsActivity;
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCacChosen:Z

    if-eqz v10, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x64

    if-ge v10, v11, :cond_9

    .line 588
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v11, 0x7f0a028f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 589
    const v4, 0x7f0a028f

    .line 595
    .local v4, "id":I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 596
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v6, v8}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 598
    .end local v4    # "id":I
    .end local v6    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_4
    return-object v9

    .line 535
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "confirmCredentials":Z
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 550
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_6
    const/4 v10, 0x1

    goto :goto_1

    .line 558
    .restart local v3    # "currentType":I
    :cond_7
    const/16 v3, 0x12

    goto :goto_2

    .line 570
    .end local v3    # "currentType":I
    .restart local v2    # "confirmCredentials":Z
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_8
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 572
    const-string v10, "set_knox_backup_pin_complete"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    .line 574
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 575
    .local v7, "state":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 576
    invoke-static {v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 577
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 591
    .end local v7    # "state":Ljava/lang/String;
    .restart local v6    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_9
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_a

    const v4, 0x7f0a087e

    .restart local v4    # "id":I
    :goto_5
    goto :goto_4

    .end local v4    # "id":I
    :cond_a
    const v4, 0x7f0a0880

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1411
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 1414
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 1415
    const/4 v0, 0x1

    .line 1417
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 656
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 658
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 660
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    .line 662
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 603
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 607
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdChangeEnforceStatus:I

    if-lez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 616
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 618
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v1, 0x70000

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 620
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a027c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 628
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 632
    :cond_2
    return-void

    .line 622
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a138b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 666
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 667
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "set_knox_backup_pin_complete"

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->setKnoxBackupPinComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1528
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 707
    .local v0, "previousStage":Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 708
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 712
    if-eq v0, p1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 715
    :cond_0
    return-void
.end method
