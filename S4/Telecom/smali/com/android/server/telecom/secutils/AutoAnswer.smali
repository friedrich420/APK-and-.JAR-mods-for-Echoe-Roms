.class public final Lcom/android/server/telecom/secutils/AutoAnswer;
.super Ljava/lang/Object;
.source "AutoAnswer.java"


# static fields
.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private static sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 49
    sput-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 131
    new-instance v0, Lcom/android/server/telecom/secutils/AutoAnswer$1;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/AutoAnswer$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000()Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$100(J)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V

    return-void
.end method

.method static synthetic access$200()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static checkAutoAnsweringMode(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    const-string v0, "AutoAnswer"

    const-string v4, "checkAutoAnsweringMode"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "autoanswering_without_device"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "automatic_answering_enable_sharedpref"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    const-string v4, "AutoAnswer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkAutoAnsweringMode isOn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    if-nez v0, :cond_1

    .line 113
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 73
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "answeringmode_auto_time"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    const-string v4, "sys.hmt.connected"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const-string v4, "AutoAnswer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isConnectedVR "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v4}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 94
    sput-object v0, Lcom/android/server/telecom/secutils/AutoAnswer;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v1, Lcom/android/server/telecom/secutils/AutoAnswer;->sBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1

    :cond_2
    move v2, v0

    .line 101
    :goto_2
    const-string v0, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 104
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 105
    const-string v0, "AutoAnswer"

    const-string v2, "skipping ring because volume is zero or ringtone is silent"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    :cond_3
    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v0, v0

    .line 112
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->startAutoAnswer(J)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method private static startAutoAnswer(J)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    const-string v0, "AutoAnswer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startAutoAnswer : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "AutoAnswer"

    const-string v1, "Do not startAutoAnswer when TPhone RelaxMode."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 168
    new-instance v1, Lcom/android/server/telecom/secutils/AutoAnswer$2;

    invoke-direct {v1}, Lcom/android/server/telecom/secutils/AutoAnswer$2;-><init>()V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
