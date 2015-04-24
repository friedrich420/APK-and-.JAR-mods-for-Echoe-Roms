.class final Lcom/android/server/telecom/DtmfLocalTonePlayer;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "DtmfLocalTonePlayer.java"


# static fields
.field private static final TONE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->TONE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    iput-object v5, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v5, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 72
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/telecom/Call;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "allow_local_dtmf_tones"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "allow_local_dtmf_tones_always"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iput-object p2, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v3, 0x50

    invoke-direct {v0, v1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 72
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating local tone generator."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method final playTone(Lcom/android/server/telecom/Call;C)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 88
    const-string v0, "playTone: mToneGenerator == null, %c."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "starting local tone: %c."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->TONE_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    const-string v1, "situation=13"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startLocalToneIfNeeded toneVolume = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->TONE_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0
.end method

.method final stopTone(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 116
    const-string v0, "stopTone: mToneGenerator == null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "stopping local tone."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method
