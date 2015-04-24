.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->deRegisterAllFingerprint(Landroid/view/ActionMode;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 571
    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeAllEnrolledFingers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 582
    return-void
.end method
