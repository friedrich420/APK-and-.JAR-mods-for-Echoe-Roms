.class public Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintConfirmPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintConfirmPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintConfirmPasswordFragment"
.end annotation


# instance fields
.field private isFromPersonalPage:Z

.field private mContinueButton:Landroid/widget/Button;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNext()V
    .locals 5

    .prologue
    const v3, 0x7f0a088f

    const/4 v4, -0x1

    .line 167
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showSensorErrorDialog()V

    .line 171
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->isFromPersonalPage:Z

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const-string v2, "FingerprintConfirmPassword"

    const-string v3, "verifyPassword is false - personal"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 182
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showError(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    const-string v2, "FingerprintConfirmPassword"

    const-string v3, "verifyPassword is false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 200
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->showError(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 253
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 265
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 266
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    goto :goto_0

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x7f10009c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_personal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->isFromPersonalPage:Z

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 108
    const v6, 0x7f040046

    invoke-virtual {p1, v6, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f10009c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v6, 0x7f10009d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    .line 118
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    const v6, 0x7f10009a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 122
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 123
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    const v6, 0x7f10009e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 126
    const v6, 0x7f100099

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 130
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v7, 0x7f0a1aeb

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "activity":Landroid/app/Activity;
    new-instance v6, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v8, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v6, v0, v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 135
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v6, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 136
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 138
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 139
    .local v1, "currentType":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 143
    instance-of v6, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v6, :cond_0

    move-object v3, v0

    .line 144
    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 145
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    const v2, 0x7f0a009d

    .line 146
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 147
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    .end local v2    # "id":I
    .end local v3    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-object v5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->handleNext()V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirmPassword$FingerprintConfirmPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 164
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 246
    return-void
.end method
