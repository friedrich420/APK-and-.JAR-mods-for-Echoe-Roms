.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;
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
    .line 503
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    const-string v1, "FingerPrintManagerListDelete"

    const-string v2, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 508
    .local v0, "chooseLockSettingsHelper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 509
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 510
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->resetFingerprintSupportingFeatures()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 513
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->removeAllEnrolledFingers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$400(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$500(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$3;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 523
    return-void
.end method
