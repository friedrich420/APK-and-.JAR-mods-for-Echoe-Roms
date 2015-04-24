.class public final Lcom/android/server/telecom/wearable/BluetoothMessageListener;
.super Lcom/samsung/bt/hfp/IMessageListener$Stub;
.source "BluetoothMessageListener.java"


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/bt/hfp/IMessageListener$Stub;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/telecom/wearable/BluetoothMessageListener;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 34
    return-void
.end method


# virtual methods
.method public final onReceived(ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 37
    const-string v0, "BluetoothMessageListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onReceived : appID : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , data : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :try_start_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v0, "BluetoothMessageListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseBluetoothATCommand "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v0, "A_HA"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "BluetoothMessageListener"

    const-string v1, "switchAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/wearable/BluetoothMessageListener;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "A_WA"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    const-string v0, "BluetoothMessageListener"

    const-string v1, "switchAudio: move to watch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/telecom/wearable/BluetoothMessageListener;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    :cond_2
    :try_start_1
    const-string v0, "Q_CT"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz v1, :cond_3

    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    .line 54
    const/4 v0, 0x2

    aget-object v0, v1, v0

    .line 56
    :cond_3
    const-string v1, "BluetoothMessageListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {v2, v0}, Lcom/android/server/telecom/BluetoothManager;->sendCallTimeToOtherDevice(ILjava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_4
    const-string v0, "Q_HA"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    invoke-static {}, Lcom/android/server/telecom/BluetoothManager;->sendBTHeadsetInfo()V

    goto :goto_0

    .line 61
    :cond_5
    const-string v0, "Q_VT"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    invoke-static {}, Lcom/android/server/telecom/BluetoothManager;->sendIncomingVT()V

    goto :goto_0

    .line 63
    :cond_6
    const-string v0, "Q_WB"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v1, "NB"

    .line 65
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v4, "wb_amr"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "BluetoothMessageListener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isWBMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 66
    const-string v0, "WB"

    .line 68
    :goto_2
    const-string v1, "WBNB"

    invoke-static {v1, v0}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 65
    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method public final onSetRemoteType(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "BluetoothMessageListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSetRemoteType : type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method
