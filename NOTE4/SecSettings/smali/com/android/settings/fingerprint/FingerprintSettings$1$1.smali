.class Lcom/android/settings/fingerprint/FingerprintSettings$1$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$1;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mRegisterStarted:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z

    .line 128
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 135
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v2, "b":Landroid/os/Bundle;
    const-string v0, "previousStage"

    const-string v1, "FingerprintSettings_register"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a1aa3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v5, v5, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    const/16 v6, 0x3e9

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 140
    .end local v2    # "b":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings;)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
