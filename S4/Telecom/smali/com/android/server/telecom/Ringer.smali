.class public final Lcom/android/server/telecom/Ringer;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "Ringer.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# instance fields
.field private final LIVE_CALL_STATES:[I

.field private flashHandler:Landroid/os/Handler;

.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

.field private mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

.field public mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

.field private mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

.field private mIsVibrating:Z

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private final mRingingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v4, v0, v1

    const/4 v1, 0x2

    aput-wide v4, v0, v1

    .line 60
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    return-void
.end method

.method constructor <init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->LIVE_CALL_STATES:[I

    .line 123
    new-instance v0, Lcom/android/server/telecom/Ringer$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Ringer$1;-><init>(Lcom/android/server/telecom/Ringer;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 110
    iput-object p2, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 111
    iput-object p3, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    .line 112
    iput-object p4, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    .line 113
    iput-object p5, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    .line 114
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    .line 117
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0, p4}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 118
    new-instance v0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-direct {v0, p4}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    .line 119
    new-instance v0, Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-direct {v0, p4}, Lcom/android/server/telecom/secutils/FlashNoti;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    .line 120
    new-instance v0, Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-direct {v0, p4, p0}, Lcom/android/server/telecom/secutils/CallMotionMgr;-><init>(Landroid/content/Context;Lcom/android/server/telecom/Ringer;)V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    .line 121
    invoke-static {p4}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    .line 122
    return-void

    .line 98
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data
.end method

.method private getTopMostUnansweredCall()Lcom/android/server/telecom/Call;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_0
.end method

.method private onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->getTopMostUnansweredCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    .line 209
    :cond_0
    return-void
.end method

.method private removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    .line 223
    return-void
.end method

.method private startHeadsetRingtone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    const-string v0, "start HeadsetRingtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const-string v0, "TPhone RelaxMode: Don\'t Start the headsetRington."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 457
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    .line 459
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->start()V

    goto :goto_0
.end method

.method private startRingingOrCallWaiting()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 248
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 249
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    .line 251
    const-string v3, "startRingingOrCallWaiting, foregroundCall: %s."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    const-string v3, "startRingingOrCallWaiting, backgroundCall: %s."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    const-string v0, "TPhone RelaxMode: Don\'t Start the ringtone and/or vibrator."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v3, "usa_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ctc_cdma_smc_fac_req"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSilence()Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateFlashNotification()V

    .line 265
    const-string v3, "voip_interworking"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPActivated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    const-string v0, "voip is activated - starting call waiting tone..."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    if-eqz v1, :cond_0

    .line 269
    const-string v0, "Playing call-waiting tone."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    .line 274
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    .line 276
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    .line 278
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->startWaitingTone()V

    goto :goto_0

    .line 285
    :cond_4
    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v0, :cond_f

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/telecom/Ringer;->LIVE_CALL_STATES:[I

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_f

    .line 289
    :cond_5
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualCallRinging(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 292
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateFlashNotification()V

    .line 296
    :cond_6
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    .line 298
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_7

    const-string v4, "android.people"

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 299
    const-string v0, "do not start ringtone for Zen mode"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/RingTTS;->checkTTS()V

    .line 305
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 308
    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v2, v7}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->checkingRecoding()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 310
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 311
    if-eq v1, v7, :cond_9

    if-nez v1, :cond_9

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-nez v0, :cond_b

    .line 315
    const-string v0, "- starting vibrator...for voice recording"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_a

    .line 319
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->startVibration()V

    .line 321
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    goto/16 :goto_0

    .line 323
    :cond_b
    const-string v0, "skipping ring because volume is zero for voice recording"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    :cond_c
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_d

    .line 329
    const-string v0, "startRingingOrCallWaiting"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getRingtone()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->play(Landroid/net/Uri;)V

    .line 352
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->startVibration()V

    goto/16 :goto_0

    .line 337
    :cond_d
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 339
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHeadsetRingtone()V

    goto :goto_1

    .line 342
    :cond_e
    const-string v0, "startRingingOrCallWaiting, skipping because volume is 0"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 355
    :cond_f
    if-eqz v1, :cond_0

    .line 360
    const-string v0, "Playing call-waiting tone."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    .line 365
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPlayingWaitingToneByNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    .line 368
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    .line 370
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->startWaitingTone()V

    goto/16 :goto_0
.end method

.method private stopCallWaiting()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "stop call waiting."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->stopWaitingTone()V

    .line 441
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallWaitingPlayer:Lcom/android/server/telecom/InCallTonePlayer;

    .line 444
    :cond_0
    return-void
.end method

.method private stopHeadsetRingtone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    const-string v0, "stop HeadsetRingtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->stopRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "- cleaning up headsetRingtone thread..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Ringer;->mHeadsetRingtonePlayer:Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;

    .line 472
    :cond_1
    return-void
.end method

.method private stopRinging()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    const-string v0, "stopRinging"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->stop()V

    .line 401
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopHeadsetRingtone()V

    .line 403
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    :cond_0
    const-string v0, "-stop flash.handler..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->stopNotiFlash()V

    .line 408
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->stopFlashCallMotion()V

    .line 409
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->stopCallMotion()V

    .line 410
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/RingTTS;->stopTTS()V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 413
    iput-boolean v3, p0, Lcom/android/server/telecom/Ringer;->mIsVibrating:Z

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCustomVibration:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->stopVibration()V

    .line 421
    :cond_2
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setIsRinging(Z)V

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 430
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingtonePlayer:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->returnOriginVolume()V

    .line 435
    :cond_5
    return-void
.end method

.method private updateFlashNotification()V
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 236
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->flashHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->checkFlashCallMotion()V

    .line 244
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallMotionMgr:Lcom/android/server/telecom/secutils/CallMotionMgr;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallMotionMgr;->checkCallMotion()V

    .line 245
    return-void
.end method

.method private updateRinging()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    .line 228
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startRingingOrCallWaiting()V

    goto :goto_0
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "New ringing call is already in list of unanswered calls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    .line 145
    :cond_1
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    .line 150
    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->removeFromUnansweredCall(Lcom/android/server/telecom/Call;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    .line 175
    :cond_1
    return-void
.end method

.method public final onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    .line 162
    return-void
.end method

.method public final onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Ringer;->onRespondedToIncomingCall(Lcom/android/server/telecom/Call;)V

    .line 167
    return-void
.end method

.method public final onWiredHeadsetPluggedInChanged$25decb5(Z)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->getTopMostUnansweredCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startHeadsetRingtone()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopHeadsetRingtone()V

    goto :goto_0
.end method

.method public final restartRingingOrCallWaiting()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "restartRingingOrCallWaiting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopRinging()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->stopCallWaiting()V

    .line 381
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->startRingingOrCallWaiting()V

    .line 384
    :cond_0
    return-void
.end method

.method public final shouldVibrate(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 483
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 484
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 485
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "vibrate_when_ringing"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 486
    if-eqz v3, :cond_1

    move v0, v1

    .line 488
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 485
    goto :goto_0

    :cond_1
    move v0, v2

    .line 486
    goto :goto_1

    .line 488
    :cond_2
    if-ne v3, v1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final silence()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/telecom/Ringer;->mRingingCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    const-string v0, "S_RI"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/Ringer;->updateRinging()V

    .line 202
    return-void
.end method
