.class public final Lcom/android/server/telecom/InCallTonePlayer;
.super Ljava/lang/Thread;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallTonePlayer$Factory;
    }
.end annotation


# static fields
.field private static sTonesPlaying:I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mState:I

.field private final mToneId:I

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return-void
.end method

.method private constructor <init>(ILcom/android/server/telecom/CallAudioManager;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    .line 117
    iput p1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    .line 118
    iput-object p2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 119
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/telecom/CallAudioManager;B)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallTonePlayer;-><init>(ILcom/android/server/telecom/CallAudioManager;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallTonePlayer;)Lcom/android/server/telecom/CallAudioManager;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    return-object v0
.end method

.method private cleanUpTonePlayer()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/telecom/InCallTonePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/InCallTonePlayer$1;-><init>(Lcom/android/server/telecom/InCallTonePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/16 v0, 0xfa0

    const/16 v1, 0x32

    const/16 v2, 0x50

    .line 126
    :try_start_0
    const-string v3, "run(toneId = %s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    sparse-switch v3, :sswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad toneId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    throw v0

    .line 135
    :sswitch_0
    const/16 v1, 0x11

    move v3, v1

    move v1, v0

    .line 240
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentToneStream()I

    move-result v0

    .line 241
    const-string v4, "emergency_call_tone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget v5, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getStreamByToneId(Lcom/android/server/telecom/CallAudioManager;II)I

    move-result v0

    .line 243
    :cond_1
    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v0, 0x9

    .line 254
    :cond_2
    :try_start_2
    const-string v4, "Creating generator"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v4, Landroid/media/ToneGenerator;

    invoke-direct {v4, v0, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :try_start_3
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    iget v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->convertToneGeneratorVolume(Landroid/media/ToneGenerator;I)Landroid/media/ToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    .line 269
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    :try_start_4
    iget v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 271
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    .line 272
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v3}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 274
    :try_start_5
    const-string v0, "Starting tone %d...waiting for %d ms."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v1, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    add-int/lit8 v0, v1, 0x14

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 281
    :cond_3
    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 282
    const/4 v0, 0x0

    :try_start_7
    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 287
    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    .line 288
    :goto_2
    return-void

    .line 140
    :sswitch_1
    const/16 v1, 0x1b

    .line 142
    const/16 v0, 0xc8

    move v3, v1

    move v1, v0

    .line 143
    goto :goto_0

    .line 146
    :sswitch_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OTA Call ended NYI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :sswitch_3
    const/16 v1, 0x16

    .line 150
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "feature_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    :cond_5
    const v0, 0x7fffffeb

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 152
    :cond_6
    const-string v0, "dcm_callwait_tone_long_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    const/16 v0, 0x5208

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 158
    :cond_7
    const/16 v0, 0x1db0

    move v3, v1

    move v1, v0

    .line 160
    goto/16 :goto_0

    .line 162
    :sswitch_4
    const/16 v2, 0x5f

    .line 164
    const/16 v0, 0x177

    move v3, v2

    move v2, v1

    move v1, v0

    .line 165
    goto/16 :goto_0

    .line 167
    :sswitch_5
    const/16 v1, 0x12

    move v3, v1

    move v1, v0

    .line 170
    goto/16 :goto_0

    .line 172
    :sswitch_6
    const/16 v2, 0x25

    .line 174
    const/16 v0, 0x1f4

    move v3, v2

    move v2, v1

    move v1, v0

    .line 175
    goto/16 :goto_0

    .line 177
    :sswitch_7
    const/16 v2, 0x5f

    .line 179
    const/16 v0, 0x177

    move v3, v2

    move v2, v1

    move v1, v0

    .line 180
    goto/16 :goto_0

    .line 182
    :sswitch_8
    const/16 v2, 0x57

    .line 184
    const/16 v0, 0x1388

    move v3, v2

    move v2, v1

    move v1, v0

    .line 185
    goto/16 :goto_0

    .line 187
    :sswitch_9
    const/16 v1, 0x26

    move v3, v1

    move v1, v0

    .line 190
    goto/16 :goto_0

    .line 192
    :sswitch_a
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    const/16 v0, 0x23

    .line 201
    :goto_3
    const v1, 0x7fffffeb

    move v3, v0

    .line 202
    goto/16 :goto_0

    .line 195
    :cond_8
    const-string v0, "sin_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "xsp_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSingTelSIM()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 196
    :cond_9
    const/16 v0, 0x67

    goto :goto_3

    .line 198
    :cond_a
    const/16 v0, 0x17

    goto :goto_3

    .line 204
    :sswitch_b
    const/16 v1, 0x15

    move v3, v1

    move v1, v0

    .line 207
    goto/16 :goto_0

    .line 209
    :sswitch_c
    const/16 v2, 0x19

    .line 211
    const/16 v0, 0x3e8

    move v3, v2

    move v2, v1

    move v1, v0

    .line 212
    goto/16 :goto_0

    .line 214
    :sswitch_d
    const/16 v1, 0x63

    .line 216
    const/16 v0, 0x258

    move v3, v1

    move v1, v0

    .line 217
    goto/16 :goto_0

    .line 219
    :sswitch_e
    const/16 v2, 0x64

    .line 221
    const/16 v0, 0x154

    move v3, v2

    move v2, v1

    move v1, v0

    .line 222
    goto/16 :goto_0

    .line 224
    :sswitch_f
    const/16 v1, 0x16

    .line 226
    const v0, 0x7fffffeb

    move v3, v1

    move v1, v0

    .line 227
    goto/16 :goto_0

    .line 229
    :sswitch_10
    const/16 v1, 0x5d

    .line 231
    const/16 v0, 0x258

    move v3, v1

    move v1, v0

    .line 232
    goto/16 :goto_0

    .line 235
    :sswitch_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Voice privacy tone NYI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string v1, "Failed to create ToneGenerator."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 284
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 287
    :cond_b
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    goto/16 :goto_2

    .line 277
    :catch_1
    move-exception v0

    .line 278
    :try_start_9
    const-string v1, "wait interrupted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 281
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit p0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_11
        0xe -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x38f -> :sswitch_10
    .end sparse-switch
.end method

.method public final setVolume(F)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 319
    :cond_0
    return-void
.end method

.method public final startTone()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 292
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 294
    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, 0x1

    .line 295
    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsTonePlaying(Z)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallTonePlayer;->start()V

    .line 300
    return-void
.end method

.method final stopTone()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iget v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    if-ne v0, v1, :cond_0

    .line 308
    const-string v0, "Stopping the tone %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 311
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
