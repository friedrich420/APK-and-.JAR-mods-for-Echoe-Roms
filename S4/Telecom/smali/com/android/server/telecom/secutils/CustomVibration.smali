.class public final Lcom/android/server/telecom/secutils/CustomVibration;
.super Ljava/lang/Object;
.source "CustomVibration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/server/telecom/secutils/CustomVibration;


# instance fields
.field mContext:Landroid/content/Context;

.field mCustomVibrationUri:Landroid/net/Uri;

.field private mRingtoneAfterVib:I

.field mVibrator:Landroid/os/SystemVibrator;

.field private mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    .line 53
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    .line 57
    return-void
.end method

.method private StringToLongArray(Ljava/lang/String;)[J
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-object v0

    .line 254
    :cond_0
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StringToLongArray, size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    .line 257
    array-length v1, v3

    if-gtz v1, :cond_1

    .line 258
    const-string v1, "string is null"

    invoke-static {v1, v8}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 262
    :cond_1
    array-length v1, v3

    new-array v1, v1, [J

    .line 264
    const/4 v2, 0x0

    :goto_1
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 265
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ret["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v6, v1, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 268
    :catch_0
    move-exception v1

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 272
    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;)[J
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CustomVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CustomVibration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/CustomVibration;->sInstance:Lcom/android/server/telecom/secutils/CustomVibration;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    const-string v0, "CustomVibration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 280
    const-string v0, "CustomVibration"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    return-void
.end method


# virtual methods
.method public final isVibrating()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setCustomVibrationUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCustomVibrationUri uri :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    .line 70
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->stopThread()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    .line 73
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 74
    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;-><init>(Lcom/android/server/telecom/secutils/CustomVibration;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    .line 75
    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->start()V

    .line 79
    :cond_0
    return-void
.end method

.method public final startVibration()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "startIncomingCallQuery: patternUri = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    .line 106
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    const-string v0, "audio"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "ringtone_after_vibration"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    iget v1, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mRingtoneAfterVib:I

    if-lez v1, :cond_4

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;-><init>(Lcom/android/server/telecom/secutils/CustomVibration;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    .line 118
    const-string v0, "- starting vibrator..."

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->start()V

    .line 123
    :cond_1
    return-void

    .line 100
    :cond_2
    const-string v0, "mCustomVibrationUri is NOT null"

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v0, "PERSONAL_VIBRATION OFF"

    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Driving mode on, Don\'t make vibration in Vibration when ringing"

    invoke-static {v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const-string v0, "vibrator"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "disable_incoming_call_popup_during_camera"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->notVibrateDuringVideoRecording(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_7
    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "vibrate_when_ringing"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    if-ne v5, v2, :cond_c

    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v3

    goto :goto_1

    :cond_d
    move v1, v3

    goto :goto_2
.end method

.method public final stopVibration()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CustomVibration;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "- stopVibration: cleaning up vibrator thread..."

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->stopThread()V

    .line 130
    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibratorThread:Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;

    .line 131
    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "- stopVibration mCustomVibrationUri : "

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    .line 135
    iput-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    .line 137
    :cond_1
    const-string v0, "- stopVibration isVibrating is null "

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
