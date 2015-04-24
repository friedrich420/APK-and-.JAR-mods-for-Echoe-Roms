.class public final Lcom/android/server/telecom/secutils/ExtraRinger;
.super Ljava/lang/Object;
.source "ExtraRinger.java"


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentExtraRingerVolume:I

.field private mExtraRingerUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mOriginRingtoneVolume:I

.field private mSensorChecked:I

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    .line 33
    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    .line 35
    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    .line 37
    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    .line 63
    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$1;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$2;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 171
    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ExtraRinger$3;-><init>(Lcom/android/server/telecom/secutils/ExtraRinger;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    .line 84
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/ExtraRinger;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p1}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/ExtraRinger;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/ExtraRinger;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/telecom/secutils/ExtraRinger;I)I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    return v0
.end method

.method static synthetic access$476(Lcom/android/server/telecom/secutils/ExtraRinger;I)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/ExtraRinger;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x64

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSensorState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeExtraRingtone: getStreamVolume - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mCurrentExtraRingerVolume:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x7d0

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    sub-int/2addr v0, v2

    div-int v0, v1, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mExtraRingerUpdateDelay:I

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    const-string v0, "ExtraRinger"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method


# virtual methods
.method public final startExtraRinger()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "startExtraRinger.."

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "extra_ringer"

    const-string v0, "extra_ringer_default_on"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    const-string v0, "Extra ringer off."

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 114
    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 135
    const-string v0, "startExtraRinger : Already max volume"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iput v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    .line 141
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 146
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 149
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    .line 150
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public final stopExtraRinger()V
    .locals 5

    .prologue
    const/16 v1, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    const-string v0, "stopExtraRinger"

    invoke-static {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->log(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    :cond_0
    iget v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 95
    const-string v0, "ExtraRinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopExtraRinger() setStreamVolume - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 98
    :cond_1
    iput v4, p0, Lcom/android/server/telecom/secutils/ExtraRinger;->mSensorChecked:I

    .line 99
    return-void
.end method
