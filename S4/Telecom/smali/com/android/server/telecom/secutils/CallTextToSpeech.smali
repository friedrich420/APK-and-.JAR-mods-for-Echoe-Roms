.class public final Lcom/android/server/telecom/secutils/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentRingtoneVolume:I

.field private mDisplayName:Ljava/lang/String;

.field private mFadeInUpdateDelay:I

.field private mFadeOutUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

.field private mTtsRepeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 120
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 103
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    .line 108
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    .line 114
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    .line 117
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    .line 143
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    .line 166
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 193
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    .line 201
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 238
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 241
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 244
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    .line 247
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->init(Landroid/content/Context;I)V

    .line 549
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 103
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    .line 108
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    .line 114
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    .line 117
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    .line 143
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    .line 166
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 193
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    .line 201
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 238
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 241
    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 244
    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    .line 247
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    .line 530
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 554
    iput-object p3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->init(Landroid/content/Context;I)V

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const v9, 0x7f080036

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    const-string v0, ""

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "streamType"

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utteranceId"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TTS ended : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v4, v8, [I

    aput v6, v4, v7

    invoke-virtual {v1, v4}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNameOrNumberFromCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v1

    invoke-static {v4, v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "CallTextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TtsCallerInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-array v1, v8, [Ljava/lang/String;

    aput-object v0, v1, v7

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DriveLinkMode TTS : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_0
    const-string v2, "extended_restrict_international_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v4, 0x7f08003a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string v2, "enhanced_driving_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v5, 0x7f0800a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ENHANCED_DRIVING_MODE TTS : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v4, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v4, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    const-string v0, "CallTextToSpeech"

    const-string v1, "TTS_INCOMING : callerinfo is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_2

    :cond_c
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method private static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1083
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1085
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1089
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_3

    .line 1091
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1093
    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    .line 1095
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1097
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    .line 1099
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1089
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1105
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 3

    .prologue
    .line 586
    const-class v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 592
    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    .line 594
    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 2

    .prologue
    .line 601
    const-class v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 607
    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 609
    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 565
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 567
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 570
    iput p2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    .line 572
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    .line 574
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 577
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V

    .line 581
    :cond_0
    return-void
.end method

.method private isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1006
    if-nez p1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return v0

    .line 1013
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    .line 1015
    :goto_1
    if-ge v3, v4, :cond_5

    .line 1017
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1019
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2

    const/16 v5, 0x39

    if-gt v2, v5, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_0

    .line 1015
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1019
    :cond_2
    const/16 v5, 0x23

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2b

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2d

    if-eq v2, v5, :cond_3

    const/16 v5, 0x28

    if-eq v2, v5, :cond_3

    const/16 v5, 0x29

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2c

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v2, v5, :cond_3

    const/16 v5, 0x4e

    if-eq v2, v5, :cond_3

    const/16 v5, 0x2e

    if-eq v2, v5, :cond_3

    const/16 v5, 0x20

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3b

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1028
    goto :goto_0
.end method

.method private setVolumeForTts(I)V
    .locals 8

    .prologue
    const/16 v7, 0x1f4

    const/4 v0, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x5

    .line 1153
    packed-switch p1, :pswitch_data_0

    .line 1216
    :goto_0
    return-void

    .line 1159
    :pswitch_0
    iget v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    .line 1168
    iget v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    :cond_1
    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    .line 1173
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-nez v0, :cond_2

    .line 1175
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1187
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolumeForTts : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    div-int v0, v7, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    .line 1194
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    div-int v0, v7, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    .line 1196
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1210
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    .line 1212
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolumeForTts : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private speakTts(I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 646
    const-string v0, "CallTextToSpeech"

    const-string v1, "Getting into speak TTS"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 666
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 670
    packed-switch p1, :pswitch_data_0

    .line 854
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 659
    :cond_2
    if-eq p1, v6, :cond_0

    goto :goto_0

    .line 676
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    goto :goto_0

    .line 685
    :pswitch_2
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    .line 687
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 703
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_0

    .line 709
    :pswitch_3
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    .line 712
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_0

    .line 729
    :pswitch_4
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    .line 733
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 744
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 753
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 755
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    .line 758
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_1
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v2, 0x7f080037

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 777
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 764
    :cond_3
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 786
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    .line 789
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    .line 803
    const-string v0, "left"

    .line 811
    :goto_2
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 813
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 807
    :cond_4
    const-string v0, "right"

    goto :goto_2

    .line 820
    :pswitch_7
    const-string v0, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDisplayName : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 825
    const/4 v2, -0x2

    if-eq v0, v2, :cond_5

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 829
    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 831
    const-string v0, "CallTextToSpeech"

    const-string v2, "TTS cannot use system language, using Locale.US instead"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 838
    if-ne v0, v6, :cond_7

    .line 840
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS ended : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 846
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 850
    :cond_7
    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result is not AUDIOFOCUS_REQUEST_GRANTED : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final stopTts()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 1119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1123
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1133
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    packed-switch v0, :pswitch_data_0

    .line 1135
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    .line 1137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 1147
    :cond_2
    :goto_1
    return-void

    .line 1133
    :pswitch_0
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    :cond_3
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    const-string v0, "CallTextToSpeech"

    const-string v1, "TTS is shutdown"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1133
    :pswitch_1
    :try_start_1
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v4, :cond_1

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetVolumeForTts : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
