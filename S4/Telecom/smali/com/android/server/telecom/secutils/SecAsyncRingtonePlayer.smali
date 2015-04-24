.class public final Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;
.super Ljava/lang/Object;
.source "SecAsyncRingtonePlayer.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVolume:F

.field private mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

.field private mHandler:Landroid/os/Handler;

.field private mOriginRingtoneVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mUseVoiceCommand:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    .line 63
    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 97
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    .line 98
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/16 v6, 0x6b

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkNotOnMainThread()V

    const-string v0, "Play ringtone."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ringtone_escalating"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    const-string v0, "mHandler: getStreamVolume - "

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleRepeat()V

    goto :goto_0

    :cond_3
    const-string v0, "mHandler: has RETURN_ORIGIN_VOLUME message"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleRepeat()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 3

    .prologue
    const/16 v2, 0x67

    const/16 v1, 0x66

    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return p1
.end method

.method static synthetic access$716(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$724(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    const v1, 0x3ca3d70a    # 0.02f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    return v0
.end method

.method private getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 447
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    new-array v1, v1, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 449
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_plus_digits"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cdnipNumber and settedCdnipNumber are same... setted cdnipNumber: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "number_plus_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    const/4 v0, 0x0

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 461
    :cond_0
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 468
    :cond_1
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/raw/low_power_ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "emergency mode, ringtoneUri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 475
    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    :try_start_0
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestTPhoneRingtoneUri(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 479
    const-string v1, "getCustomRingtoneUri : change TPhone ringtone URI"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 488
    :cond_3
    :goto_0
    return-object p1

    .line 482
    :cond_4
    const-string v0, "getCustomRingtoneUri : use default ringtone URI"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 394
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 395
    const/4 v0, 0x0

    .line 397
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 398
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_4

    move v1, v4

    .line 400
    :goto_0
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 404
    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 406
    if-eqz v5, :cond_d

    .line 407
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    :goto_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    .line 414
    if-nez v5, :cond_1

    move v1, v2

    .line 416
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  getRingtone  : PhoneId  : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    if-ne v1, v4, :cond_5

    .line 418
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 424
    :goto_2
    if-nez p1, :cond_3

    .line 425
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    move-object p1, v0

    .line 428
    :cond_3
    if-nez p1, :cond_6

    .line 431
    :goto_3
    if-nez v2, :cond_9

    .line 432
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 437
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 438
    invoke-virtual {v0, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 443
    :goto_5
    return-object v0

    :cond_4
    move v1, v2

    .line 398
    goto :goto_0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPhoneId failed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    goto :goto_1

    .line 419
    :cond_5
    if-ne v1, v8, :cond_c

    .line 420
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    goto :goto_2

    .line 428
    :cond_6
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommendation_time"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getRintoneOffset recommendation_time offset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move v2, v0

    goto :goto_3

    :cond_7
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommendation_time_2"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getRintoneOffset recommendation_time_2 offset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    const-string v0, "highlight_offset"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getRintoneOffset highlight_offset offset = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 434
    :cond_9
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    goto/16 :goto_4

    .line 440
    :cond_a
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 441
    invoke-virtual {v0, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    goto/16 :goto_5

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move-object v1, v3

    goto/16 :goto_2

    :cond_d
    move v1, v2

    goto/16 :goto_1
.end method

.method private handleRepeat()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "Ringtone already playing."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :goto_1
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_2
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->startExtraRinger()V

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 315
    const-string v0, "Repeat ringtone."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private handleStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 330
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkNotOnMainThread()V

    .line 331
    const-string v0, "Stop ringtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "Ringtone.stop() invoked."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 336
    iput-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 341
    iput-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 344
    :cond_1
    monitor-enter p0

    .line 347
    :try_start_0
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->stopExtraRinger()V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    const-string v0, "stopRing() setStreamVolume - "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 355
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopRing() getStreamVolume - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    const-string v0, "remove message (EVENT_PLAY)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    .line 368
    const-string v0, "Handler cleared."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final checkingRecoding()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 515
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    new-array v3, v0, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 517
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    const-string v2, "during voice recording, it should vibrate"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :goto_0
    return v0

    .line 520
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    const-string v2, "during video recording, it should vibrate in the tphone mode"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->notVibrateDuringVideoRecording(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    const-string v2, "during video recording, it should alert ring"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    .line 527
    :cond_2
    const-string v2, "during video recording, it should vibrate"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final play(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    const-string v0, "Posting play."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iput v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    .line 126
    const/16 v0, 0x1f4

    .line 127
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/16 v0, 0x2bc

    .line 131
    :cond_0
    int-to-long v4, v0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "ringtone-player"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, p0, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;-><init>(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v4

    const-string v0, "ringtone_mute_gap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "vibrate_when_ringing"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_3
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 134
    iput v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    .line 135
    const-string v0, "incoming call from"

    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_8

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v0, v2

    .line 131
    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move v0, v2

    .line 133
    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3

    .line 136
    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final returnOriginVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v0, "ReturnOriginVolume after voice command ringtone stop"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const-string v0, "ringtone_mute_gap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 152
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    const-string v0, "Posting stop."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
