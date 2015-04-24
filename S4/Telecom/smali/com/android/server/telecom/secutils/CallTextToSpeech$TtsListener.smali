.class final Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TtsListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;B)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 9

    .prologue
    const/4 v1, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 357
    if-nez p1, :cond_5

    .line 370
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 378
    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "previousLocale"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " voiceLocale "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 382
    const-string v0, "zh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 388
    const/4 v0, 0x2

    array-length v5, v4

    if-ne v0, v5, :cond_2

    .line 390
    new-instance v0, Ljava/util/Locale;

    aget-object v2, v4, v7

    aget-object v3, v4, v8

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    const-string v2, "CallTextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " voicetalkLocale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 414
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    .line 420
    :cond_0
    const-string v0, "CallTextToSpeech"

    const-string v1, "Language is not available. Set US as default."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 426
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-static {v0, v8}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z

    .line 428
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInit...TTS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V

    .line 468
    :cond_1
    :goto_2
    return-void

    .line 396
    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_1

    .line 449
    :cond_4
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInit...TTS : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-static {v0, v8}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z

    .line 454
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V

    goto :goto_2

    .line 464
    :cond_5
    const-string v0, "CallTextToSpeech"

    const-string v1, "Could not initialize TextToSpeech."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public final onUtteranceCompleted(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 473
    const-string v2, "CallTextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onUtteranceCompleted...TTS : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v4}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 478
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 498
    :cond_1
    :goto_1
    return-void

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 492
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 494
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_1
.end method
