.class Lcom/android/settings/fingerprint/PaypalPayment$7;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/PaypalPayment;->showDataUsingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/PaypalPayment;

.field final synthetic val$checkBoxDoNotShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/PaypalPayment;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$7;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    iput-object p2, p0, Lcom/android/settings/fingerprint/PaypalPayment$7;->val$checkBoxDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$7;->val$checkBoxDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string v0, "IS_DATA_USING_DIALOG_SHOW"

    const-string v1, "true"

    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$7;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/fingerprint/PaypalPayment;->access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/PaypalPayment;->putPref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 666
    const-string v0, "PaypalPayment"

    const-string v1, "putPref: Data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$7;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->startDownloadService()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$800(Lcom/android/settings/fingerprint/PaypalPayment;)V

    .line 671
    return-void
.end method
