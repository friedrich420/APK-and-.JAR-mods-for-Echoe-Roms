.class public final Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;
.super Ljava/lang/Thread;
.source "SecHeadsetRingtonePlayer.java"


# instance fields
.field private mIsRinging:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mIsRinging:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/16 v5, 0x16

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    iput-boolean v4, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mIsRinging:Z

    .line 17
    const-string v0, "SecHeadsetRingtonePlayer..."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x9

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-static {v0, v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->convertToneGeneratorVolume(Landroid/media/ToneGenerator;I)Landroid/media/ToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 28
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 30
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mIsRinging:Z

    if-nez v0, :cond_0

    .line 32
    const-string v0, "SecHeadsetRingtonePlayer...already stopRingtone()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->stopRingtone()Z

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "Failed to create ToneGenerator."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mIsRinging:Z

    goto :goto_0
.end method

.method public final declared-synchronized stopRingtone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mIsRinging:Z

    .line 39
    const-string v2, "SecHeadsetRingtonePlayer...stopRingtone()"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v2, :cond_0

    .line 41
    const-string v1, "SecHeadsetRingtonePlayer...mToneGenerator.stopTone()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 43
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecHeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit p0

    return v0

    .line 47
    :cond_0
    :try_start_1
    const-string v0, "SecHeadsetRingtonePlayer...mToneGenerator is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 48
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
