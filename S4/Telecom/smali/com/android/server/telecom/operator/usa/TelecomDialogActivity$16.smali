.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;
.super Ljava/lang/Object;
.source "TelecomDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

.field private synthetic val$editText:Landroid/widget/EditText;

.field private synthetic val$showActivateIncompleteNumberDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$showActivateIncompleteNumberDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 466
    const/16 v0, 0xe

    .line 467
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->access$200(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$showActivateIncompleteNumberDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 473
    :goto_0
    new-array v1, v5, [Landroid/text/InputFilter;

    .line 474
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 475
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 476
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;->val$showActivateIncompleteNumberDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
