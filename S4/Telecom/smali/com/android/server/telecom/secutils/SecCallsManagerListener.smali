.class public final Lcom/android/server/telecom/secutils/SecCallsManagerListener;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "SecCallsManagerListener.java"


# instance fields
.field private mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

.field private mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

.field private mCall:Lcom/android/server/telecom/Call;

.field private mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOldState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    .line 54
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    .line 55
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    .line 57
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    .line 61
    new-instance v0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;-><init>(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    .line 64
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 66
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedial;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/AutoRedial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/secutils/AutoRedial;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    return-object v0
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallAdded : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/android/server/telecom/BluetoothManager;->sendIncomingVT()V

    .line 90
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/telecom/CallBargeIn;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallBargeIn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->init()V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoAnswer;->checkAutoAnsweringMode(Landroid/content/Context;)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    .line 101
    :cond_1
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 106
    :cond_2
    const-string v1, "setLineCtrl to set call time title"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    .line 108
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 111
    :cond_3
    return-void

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    goto :goto_0
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallRemoved : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->clearLGTSendEmptyFlashFlag()V

    .line 119
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->sendOnDisconnected(Ljava/lang/String;)V

    .line 120
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    const-string v0, "onCallStateChanged %s -> %s, call: %s"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p1, v1, v7

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0, v7}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    .line 130
    :cond_0
    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 131
    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 132
    const-string v0, "do not wakeUpScreen in TPhoneMode"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/secutils/MinuteMinder;->stopMinuteMinderAlarm()V

    .line 137
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 138
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->startAutoRedialTimeDelay(Lcom/android/server/telecom/Call;I)V

    .line 151
    :goto_1
    const-string v0, "end_call_when_dial_e911"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "non-e911 redialing..."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    sput-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 161
    :cond_2
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 163
    const-string v0, "VoLTE tc 14.2, redialing..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    sput-object v6, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 172
    :cond_3
    const/4 v0, 0x5

    if-ne p3, v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/MinuteMinder;->startMinuteMinderAlarm(Landroid/content/Context;)V

    .line 176
    :cond_4
    if-ne p2, v8, :cond_6

    const/4 v0, 0x5

    if-ne p3, v0, :cond_6

    .line 177
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-eq v0, v7, :cond_6

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    const-string v1, "call_answer_vib"

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    .line 184
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 186
    const/4 v1, 0x7

    if-eq p2, v1, :cond_8

    const/4 v1, 0x7

    if-ne p3, v1, :cond_8

    .line 187
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSplitFromConference(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getDisconnectForCallBarring()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    :cond_7
    const-string v0, "if conference call or end by callbarring, not vibration "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_8
    :goto_2
    const/4 v0, 0x4

    if-eq p2, v0, :cond_9

    if-ne p2, v8, :cond_a

    .line 198
    :cond_9
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 199
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_photoring_mt_content_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_photoring_mt_content_url"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged url : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_a

    .line 204
    const-string v2, "key_photoring_mt_content_url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->hideBargeInNotification()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    .line 210
    :cond_b
    return-void

    .line 134
    :cond_c
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->wakeUpScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 140
    :cond_d
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    :cond_e
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    .line 143
    iput p2, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    .line 144
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 192
    :cond_f
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    const-string v1, "call_end_vib"

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public final onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onIncomingCallAnswered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendAcceptIntentForRecorder(Landroid/content/Context;)V

    .line 219
    return-void
.end method
