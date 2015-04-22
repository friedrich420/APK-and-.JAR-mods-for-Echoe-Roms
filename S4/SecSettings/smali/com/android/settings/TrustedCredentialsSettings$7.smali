.class Lcom/android/settings/TrustedCredentialsSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3700(Lcom/android/settings/TrustedCredentialsSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z
    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$3702(Lcom/android/settings/TrustedCredentialsSettings;Z)Z

    .line 592
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3800(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 594
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$3802(Lcom/android/settings/TrustedCredentialsSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # getter for: Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3400(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 598
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    # setter for: Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0, v2}, Lcom/android/settings/TrustedCredentialsSettings;->access$3402(Lcom/android/settings/TrustedCredentialsSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$7;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 603
    :cond_2
    return-void
.end method
