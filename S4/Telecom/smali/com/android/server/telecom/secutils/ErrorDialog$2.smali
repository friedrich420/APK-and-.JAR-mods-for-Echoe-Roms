.class final Lcom/android/server/telecom/secutils/ErrorDialog$2;
.super Landroid/telephony/PhoneStateListener;
.source "ErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 135
    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->checkServiceInStateOfCurrentCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntent_PSVT(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "ErrorDialog"

    const-string v1, "start IMS_REGISTRATION_TIMER_VT"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "ErrorDialog"

    const-string v1, "start IMS_REGISTRATION_TIMER_VOLTE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$200(Lcom/android/server/telecom/secutils/ErrorDialog;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIM is not ready.. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$300(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$2;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$000(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    goto/16 :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
