.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 496
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isEnrolled:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1700(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->DoNotRemoveByForce:Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1802(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Z)Z

    .line 498
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 500
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v2, "previousStage"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mPreviousStage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v2, "for_ode"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->isForODE:Z
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 519
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, "result_intent":Landroid/content/Intent;
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string v2, "ownName"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mOwnName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string v2, "enrollResult"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    const-string v2, "fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 515
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setResult(ILandroid/content/Intent;)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_fingerIndex"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->finish()V

    goto :goto_0
.end method
