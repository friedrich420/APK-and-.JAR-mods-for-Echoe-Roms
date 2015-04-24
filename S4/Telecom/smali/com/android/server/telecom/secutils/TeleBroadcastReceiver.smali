.class public final Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TeleBroadcastReceiver.java"


# static fields
.field public static mDockState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    new-instance v0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;-><init>(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-eqz p1, :cond_0

    const-string v0, "EXTRA_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_STATE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "WB_AMR - state : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioparamWBAMR(I)V

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->setWideBandAMR(Z)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateWideBand(Lcom/android/server/telecom/Call;Z)V

    if-eqz v3, :cond_0

    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HD_VOICE_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "sendHDVoiceIntentForGear - send HDVoice BR"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 41
    const-string v0, "com.android.server.telecom.extra.NOTIFY_MISSED_CALL_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "handleNotifyMissedCall() from ITelephony.Stub"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    const-string v1, "NAME"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NUMBER"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LABEL"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "DATE"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/MissedCallNotifier;->SecShowMissedCallNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    if-eqz p1, :cond_1

    const-string v0, "handleRADSelectForGear"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.phone.extra.RAD_POPUP_SELECT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleRADSelectForGear - EXTRA_RAD_POPUP_SELECT - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "handleRADSelectForGear -getLastMoCallIntent is null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v2, "kor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "extra_rad_dial_to_korea"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v0, "extra_rad_skip_popup"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "local"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "extra_rad_dial_to_korea"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrong value!! - EXTRA_RAD_POPUP_SELECT - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    iput-object p1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 100
    const-string v1, "Action received: %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const-string v1, "android.intent.action.WB_AMR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v1, "com.android.server.telecom.action.NOTIFY_MISSED_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "com.android.phone.ACTION_RAD_SELECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 110
    :cond_3
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    .line 113
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
