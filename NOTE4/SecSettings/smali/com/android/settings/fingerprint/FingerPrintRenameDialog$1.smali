.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;
.super Ljava/lang/Object;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 97
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 92
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, -0x1

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->access$000(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
