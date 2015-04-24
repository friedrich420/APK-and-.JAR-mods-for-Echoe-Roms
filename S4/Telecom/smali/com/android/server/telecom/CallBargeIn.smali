.class public final Lcom/android/server/telecom/CallBargeIn;
.super Landroid/os/Handler;
.source "CallBargeIn.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# instance fields
.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mBargeInType:I

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 78
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 79
    return-void
.end method

.method private needStartIncomingBargeIn()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v2, :cond_2

    .line 307
    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v3, v0, [I

    const/4 v4, 0x5

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 307
    goto :goto_0

    .line 317
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "needStartIncomingBargeIn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallBargeIn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 318
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private stopBargeIn()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopBargeIn : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const v4, 0x7f080032

    const/16 v3, 0x8

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartIncomingBargeIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHOW_BARGE_IN_NOTIFY - InCallUI hasfocus - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInCallUIhasFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInCallUIhasFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, "SHOW_BARGE_IN_NOTIFY - delay 1000"

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v0, 0x9b

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "SHOW_BARGE_IN_NOTIFY -showBargeInNotification "

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aget-object v5, v3, v8

    aput-object v5, v4, v8

    aget-object v3, v3, v9

    aput-object v3, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getBargeInGuideString: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CallBargeIn"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02000c

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.callsettings.AnsweringCall"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, v9, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x7001

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "showBargeInNotification() complete."

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    const-string v0, "Still ringing state, try again"

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v0, 0x99

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    .line 112
    iget v1, v0, Landroid/telecom/AudioState;->route:I

    if-eq v1, v5, :cond_0

    iget v1, v0, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v3, :cond_0

    .line 115
    const-string v0, "TURN_ON_SPEAKER_FOR_BARGE_IN : turn on speaker"

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto/16 :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hideBargeInNotification()V
    .locals 2

    .prologue
    const/16 v1, 0x9b

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallBargeIn;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallBargeIn;->removeMessages(I)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    .line 411
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 413
    const/16 v1, 0x7001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 414
    return-void
.end method

.method public final init()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 132
    const/16 v0, 0x9a

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "onCreate(): bargeIn disabled.."

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    goto :goto_0
.end method

.method public final onResults([Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "IWSpeechRecognizerListener : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CallBargeIn"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IWSpeechRecognizerListener : result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallBargeIn"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 149
    iget v3, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 151
    :sswitch_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    .line 155
    const-string v0, "answer call by Barge-In"

    const-string v3, "CallBargeIn"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v1, [I

    aput v6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->answer(I)V

    .line 160
    const/16 v0, 0x99

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    .line 166
    const-string v0, "reject call by Barge-In"

    const-string v3, "CallBargeIn"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "drivelink_rejectmessage_on"

    const-string v3, "drivelink_rejectmessage_body"

    iget-object v4, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reject message mode is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when drivelink mode on."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallBargeIn"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallBargeIn"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v4, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v5, v1, [I

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v1, [I

    aput v6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 167
    goto :goto_1

    .line 180
    :sswitch_1
    if-ne v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    .line 182
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final stopBargeIn(I)V
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopBargeIn : mBargeInType"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bargeInType : 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    .line 365
    :cond_0
    return-void
.end method

.method public final updateBargeInState()V
    .locals 8

    .prologue
    const/16 v7, 0x9b

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 276
    const-string v0, "updateBargeInState"

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_6

    move v0, v2

    :goto_2
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_when_ringing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vib_mode =  "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vib when ring = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CallBargeIn"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz v4, :cond_8

    :cond_2
    move v0, v2

    :goto_4
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "needStartBargeIn: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "CallBargeIn"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c

    .line 280
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartIncomingBargeIn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {p0, v7}, Lcom/android/server/telecom/CallBargeIn;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/server/telecom/CallBargeIn;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "locked - SHOW_BARGE_IN_NOTIFY -1st delay 2sec"

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    .line 283
    :goto_5
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startBargeIn : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallBargeIn"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getDriveLinkLocale(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(II)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 279
    goto/16 :goto_2

    :cond_7
    move v4, v3

    goto/16 :goto_3

    :cond_8
    move v0, v3

    goto/16 :goto_4

    .line 282
    :cond_9
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v7, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 283
    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    goto/16 :goto_0

    .line 284
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "needStartDialBargeIn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallBargeIn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_c
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_4

    :cond_e
    move v1, v0

    goto/16 :goto_1
.end method
