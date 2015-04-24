.class public Lcom/android/server/telecom/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mBluetoothConnected:Z

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallAudioManager;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/telecom/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothManager$1;-><init>(Lcom/android/server/telecom/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 69
    new-instance v0, Lcom/android/server/telecom/BluetoothManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothManager$2;-><init>(Lcom/android/server/telecom/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/android/server/telecom/BluetoothManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothManager$3;-><init>(Lcom/android/server/telecom/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    .line 156
    iput-boolean v1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnected:Z

    .line 163
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 164
    iput-object p2, p0, Lcom/android/server/telecom/BluetoothManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 165
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager;->mContext:Landroid/content/Context;

    .line 167
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 173
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 4

    .prologue
    const/16 v1, 0xd

    .line 43
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/telecom/BluetoothManager;Z)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p1, :cond_0

    const-string v0, "registerBluetoothHeadsetMessageListener fail"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/telecom/wearable/BluetoothMessageListener;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/wearable/BluetoothMessageListener;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/bluetooth/BluetoothHeadset;->registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z

    const-string v0, "register MessageListener in BluetoothHeadset"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    const-string v0, "unRegisterBluetoothHeadsetMessageListener fail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHeadset;->unRegisterMessageListener(I)Z

    const-string v0, "unregister MessageListener in BluetoothHeadset"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/BluetoothManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDirectToVoicemailMillis(Landroid/content/ContentResolver;)J
    .locals 4

    .prologue
    .line 53
    const-string v0, "direct_to_voicemail_ms"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "telecom."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDurationMillis(Lcom/android/server/telecom/Call;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 250
    :cond_0
    return-wide v0
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    const-string v0, "BluetoothVendorCommand"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public static processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 13

    .prologue
    .line 49
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v6, "+"

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v0, "*77#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "can not DualNumber call in roaming area"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f080093

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    const/4 p0, 0x0

    .line 128
    :cond_1
    :goto_0
    return-object p0

    .line 51
    :cond_2
    if-eqz v5, :cond_8

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    const-string v1, "RoamingAutoDialExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "number - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isEmergencyNumber - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "LGT_RAD_TEMP"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v1, "COUNTRY_CODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "COUNTRY_CODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    const-string v1, "CALL_TYPE"

    const/16 v8, 0xd

    invoke-virtual {p0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getLGTRADCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "RoamingAutoDialExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LGTRADTemp : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", countryCodei : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", hasCountryCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "RoamingAutoDialExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "callType : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", countryCodeD : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "RoamingAutoDialExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RADSetting : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getLGTRADSetting()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getLGTRADSetting()I

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_3

    const/16 v10, 0xc

    if-ne v8, v10, :cond_4

    :cond_3
    const/16 v10, 0xb

    if-eq v9, v10, :cond_5

    const/16 v9, 0xb

    if-ne v8, v9, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-eqz v1, :cond_6

    const-string v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const-string v1, "82"

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_9

    const/4 v3, 0x0

    const/4 v2, 0x2

    move v4, v2

    move-object v2, v5

    :goto_2
    if-nez v0, :cond_40

    const-string v0, "0234167010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "82"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v1, :cond_1

    const-string v1, "RoamingAutoDialExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changedNumber - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "extra_rad_original_number"

    invoke-virtual {p0, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_rad_convert_number"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x2

    move v3, v4

    move v4, v2

    move-object v2, v5

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_10

    const/4 v9, 0x2

    if-ne v3, v9, :cond_10

    const-string v7, "001"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "002"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "005"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "008"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "0082"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const-string v7, "extra_rad_original_number"

    invoke-virtual {p0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v12, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_2

    :cond_c
    const-string v7, "00700"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "00345"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "00365"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "00321"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_e
    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_10
    if-nez v2, :cond_41

    if-eqz v7, :cond_41

    const/16 v2, 0xb

    if-eq v8, v2, :cond_41

    const/16 v2, 0xc

    if-eq v8, v2, :cond_41

    const/4 v2, 0x2

    if-ne v3, v2, :cond_41

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getLGTRADSetting()I

    move-result v2

    const/16 v7, 0xb

    if-ne v2, v7, :cond_41

    const-string v2, "RoamingAutoDialExtension"

    const-string v3, "Set Auto Dial Temp On"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    move v3, v4

    move v4, v2

    move-object v2, v5

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x1

    if-ne v4, v0, :cond_17

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-gt v0, v3, :cond_17

    :cond_12
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_13
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto/16 :goto_3

    :cond_14
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v2

    goto/16 :goto_3

    :cond_16
    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto/16 :goto_3

    :cond_17
    const/4 v0, 0x0

    move v1, v0

    move-object v0, v2

    goto/16 :goto_3

    .line 56
    :cond_18
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingAutoDialEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "processOutgoingCallIntent:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string v0, "videocall"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "videocall"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "- isVideoCall"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 67
    :cond_19
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1b

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 70
    :goto_5
    const-string v2, "RoamingAutoDialExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEmergencyNumber - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_1a
    if-eqz v0, :cond_1c

    .line 75
    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "- isEmergencyNumber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    :cond_1b
    const/4 v0, 0x0

    goto :goto_5

    .line 79
    :cond_1c
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    invoke-static {v1}, Lcom/android/server/telecom/operator/OperatorUtils;->isMMICode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 82
    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "- isMMICode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 86
    :cond_1e
    const-string v0, "SKTRADDialOption"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v0, "RADDialOption"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getRoamingAutoDialSetting()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    const-string v0, "extra_rad_dial_to_korea"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_rad_skip_popup"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    :cond_20
    :goto_6
    const-string v0, "w_zone_for_rad"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 88
    const-string v0, "com.skt.iswzone"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    sput-boolean v0, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    if-eqz v0, :cond_21

    .line 90
    const-string v0, "Wzoneprefix"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    .line 94
    :cond_21
    const-string v0, "extra_rad_skip_popup"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    const-string v2, "RoamingAutoDialExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EXTRA_RAD_SKIP_POPUP: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    if-nez v0, :cond_25

    .line 97
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 99
    const-string v0, "RoamingAutoDialExtension"

    const-string v2, "TPhone Mode : Inside Roaming Auto Dial type"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.prod.phone.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v2, "com.skt.prod.phone.extra.NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :goto_7
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_RAD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 86
    :cond_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "RoamingAutoDialExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "roamingAutoDialOption: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "extra_rad_skip_popup"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "korea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v0, "extra_rad_dial_to_korea"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6

    :cond_23
    const-string v2, "abroad"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "extra_rad_dial_to_korea"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_6

    .line 103
    :cond_24
    const-string v0, "RoamingAutoDialExtension"

    const-string v2, "OEM Mode : Inside Roaming Auto Dial type"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-class v2, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v2, "extra_rad_original_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 115
    :cond_25
    const-string v0, "extra_rad_dial_to_korea"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 116
    const-string v2, "RoamingAutoDialExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EXTRA_RAD_DIAL_TO_KOREA: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRADDialingToKorea()Z

    move-result v0

    if-nez v0, :cond_26

    .line 119
    const-string v0, "RoamingAutoDialExtension"

    const-string v2, "TPhone Mode : rad dial to korea"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.skt.prod.phone.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v2, "com.skt.prod.phone.extra.NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 124
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 126
    :cond_26
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_28

    const-string v0, "114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "113"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "117"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "118"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "119"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "122"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "125"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_27
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_1

    :cond_28
    const-string v0, "RoamingAutoDialExtension"

    const-string v2, "convertNumberForRAD : "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "010114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "011114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "017114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "0082114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "+82114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_29
    const-string v0, "tel"

    const-string v1, "+82263439000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "changedNumber(114) SKT - +82263439000"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2a
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_2b
    const/4 v0, 0x0

    goto :goto_9

    :cond_2c
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "+82221900901"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "82221900901"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "0221900901"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "+8215880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "+82215880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "8215880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "82215880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "0215880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "15880608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "+82114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "82114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "114"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "+82100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "82100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "02100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2d
    const-string v0, "tel"

    const-string v1, "+82221900901"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "changedNumber(114) KT - +82221900901"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2e
    const-string v0, "111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "113"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "119"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "117"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "118"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "122"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "125"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tel"

    const-string v1, "+82232100404"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "RoamingAutoDialExtension"

    const-string v1, "changedNumber(emergency) - +82232100404"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_30
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "*88"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v1, :cond_3f

    const-string v0, "*88"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "+0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+82"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    :goto_a
    const-string v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "RoamingAutoDialExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changedNumber(*88) - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_32
    const-string v0, "001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "008"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "0082"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    if-eqz v2, :cond_1

    const-string v2, "RoamingAutoDialExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "changedNumber(convert) - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "extra_rad_original_number"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_rad_convert_number"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_34
    const-string v0, "00700"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "00345"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "00365"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "00321"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_36
    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    goto :goto_b

    :cond_38
    const-string v0, "1544"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "1577"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "1588"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "1599"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "1644"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+82"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3c

    :cond_3b
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+8210"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_3c
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+82"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_3d
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "+82"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_3e
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    goto/16 :goto_b

    :cond_3f
    move-object v0, v1

    goto/16 :goto_a

    :cond_40
    move-object v0, v2

    move v1, v3

    goto/16 :goto_3

    :cond_41
    move-object v2, v5

    move v12, v3

    move v3, v4

    move v4, v12

    goto/16 :goto_2
.end method

.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 101
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 103
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static sendBTHeadsetInfo()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 56
    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->getBluetoothManager()Lcom/android/server/telecom/BluetoothManager;

    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DUAL"

    .line 61
    :goto_0
    const-string v1, "DUAL"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    const-string v0, "SINGLE"

    goto :goto_0
.end method

.method public static sendCallTimeToOtherDevice(ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCallTimeToOtherDevice: before number = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lcom/android/server/telecom/BluetoothManager;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCallTimeToOtherDevice: after number = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 101
    if-nez v4, :cond_1

    .line 102
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->getDurationMillis(Lcom/android/server/telecom/Call;)J

    move-result-wide v0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "R_CT"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-wide/16 v0, 0x0

    .line 111
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 114
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    const-string v1, "sendCallTimeToOtherDevice: isConference"

    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    .line 121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 123
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 124
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->getDurationMillis(Lcom/android/server/telecom/Call;)J

    move-result-wide v0

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendCallTimeToOtherDevice: current = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 130
    cmp-long v8, v0, v2

    if-lez v8, :cond_3

    move-wide v2, v0

    .line 131
    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "R_CT"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 142
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendCallTimeToOtherDevice: current = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->getDurationMillis(Lcom/android/server/telecom/Call;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 145
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->getDurationMillis(Lcom/android/server/telecom/Call;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "R_CT"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static sendIncomingVT()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_2

    .line 83
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 86
    :goto_0
    if-eqz v1, :cond_0

    .line 87
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sendIncomingVT: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "R_VT"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public static sendOnDisconnected(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 68
    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->getBluetoothManager()Lcom/android/server/telecom/BluetoothManager;

    move-result-object v0

    .line 69
    iget-object v1, v0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 71
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "DISC"

    invoke-static {v0, p0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSecBluetoothATCommand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 216
    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->getBluetoothManager()Lcom/android/server/telecom/BluetoothManager;

    move-result-object v0

    .line 217
    iget-object v1, v0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 218
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 224
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 226
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isConnectedBTWithWatch type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/BluetoothManager;->log(Ljava/lang/String;)V

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    const/16 v4, 0xb

    invoke-virtual {v1, v0, v4, v3}, Landroid/bluetooth/BluetoothHeadset;->sendMessageToHeadset(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 413
    :goto_0
    if-ge v3, v4, :cond_2

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 414
    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "connectBluetoothAudio()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionRequestTime:J

    .line 353
    return-void
.end method

.method final disconnectBluetoothAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v0, "disconnectBluetoothAudio()..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 360
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 361
    return-void
.end method

.method public final isBluetoothAudioConnected()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    .line 253
    const-string v0, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHeadset)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_0
    :goto_0
    return v2

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 258
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 261
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 262
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 263
    iget-object v4, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for headset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    if-eqz v4, :cond_2

    .line 267
    const/4 v2, 0x1

    goto :goto_0

    .line 261
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method final isBluetoothAudioConnectedOrPending()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const-string v2, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :goto_0
    return v0

    .line 291
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_2

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v2, v4

    .line 294
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msec ago)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iput-boolean v1, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnectionPending:Z

    move v0, v1

    .line 302
    goto :goto_0

    .line 306
    :cond_2
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 307
    goto :goto_0
.end method

.method final isBluetoothAvailable()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 201
    const-string v0, "isBluetoothAvailable()..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    .line 222
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    const/4 v3, 0x1

    move v1, v2

    .line 224
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 225
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "state = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "for headset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 232
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  ==> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method final isBluetoothWatchSingleConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    move v0, v1

    .line 323
    :goto_0
    return v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 316
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 317
    iget-object v3, p0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bluetooth handset type : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const-string v3, "WA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 320
    goto :goto_0

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method final updateBluetoothState()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/CallAudioManager;->onBluetoothStateChange(Lcom/android/server/telecom/BluetoothManager;)V

    .line 337
    return-void
.end method

.method protected final updateScreenStateForGearSound(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 401
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateScreenStateForGearSound "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    if-eqz p2, :cond_2

    .line 409
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 426
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
