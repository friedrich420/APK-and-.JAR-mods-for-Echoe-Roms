.class public Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
.super Landroid/app/DialogFragment;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mFingerPrintIndex:I

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    .local v2, "res":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "fingerName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f100165

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    .line 107
    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1aae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 123
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 134
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "DeviceNameSettings"

    const-string v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 142
    packed-switch p2, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "fingerPrintName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->initView(Landroid/view/View;)V

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 78
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 220
    const-string v1, "DeviceNameSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 224
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 216
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    .line 138
    return-void
.end method
