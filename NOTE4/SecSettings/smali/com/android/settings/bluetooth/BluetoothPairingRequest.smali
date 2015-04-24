.class public final Lcom/android/settings/bluetooth/BluetoothPairingRequest;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPairingRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private playPopupAlert(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 128
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 131
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 133
    .local v1, "manager":Landroid/app/NotificationManager;
    const v3, 0x1080080

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x1080080

    const/high16 v11, -0x80000000

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 47
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 49
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v10, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 51
    .local v9, "type":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v6, "pairingIntent":Landroid/content/Intent;
    const-class v10, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v6, p1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v10, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v6, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    const-string v10, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    .line 58
    :cond_0
    const-string v10, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 60
    .local v7, "pairingKey":I
    const-string v10, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    .end local v7    # "pairingKey":I
    :cond_1
    const-string v10, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v10, 0x10000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    const-string v10, "power"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 67
    .local v8, "powerManager":Landroid/os/PowerManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "deviceAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingRequest;->playPopupAlert(Landroid/content/Context;)V

    .line 124
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceAddress":Ljava/lang/String;
    .end local v6    # "pairingIntent":Landroid/content/Intent;
    .end local v8    # "powerManager":Landroid/os/PowerManager;
    .end local v9    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 67
    .restart local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v6    # "pairingIntent":Landroid/content/Intent;
    .restart local v8    # "powerManager":Landroid/os/PowerManager;
    .restart local v9    # "type":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 104
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v6    # "pairingIntent":Landroid/content/Intent;
    .end local v8    # "powerManager":Landroid/os/PowerManager;
    .end local v9    # "type":I
    :cond_4
    const-string v10, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 107
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 109
    .local v4, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 111
    .end local v4    # "manager":Landroid/app/NotificationManager;
    :cond_5
    const-string v10, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    const-string v10, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "bondState":I
    const-string v10, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, "oldState":I
    const/16 v10, 0xb

    if-ne v5, v10, :cond_2

    const/16 v10, 0xa

    if-ne v1, v10, :cond_2

    .line 119
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 121
    .restart local v4    # "manager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v12}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method
