.class Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 699
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mfromOnehandGrip:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->isSupportedOnehand(Landroid/content/Context;)Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->putKnoxPasswordPolicy(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V

    .line 710
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintOnehandGrip"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v3, 0x3f1

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 742
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 716
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 718
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v2, "for_ode"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->putKnoxPasswordPolicy(Landroid/content/Intent;)V
    invoke-static {v2, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3800(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V

    .line 727
    :cond_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 732
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v1, "result_intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 738
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_fingerIndex"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0
.end method
