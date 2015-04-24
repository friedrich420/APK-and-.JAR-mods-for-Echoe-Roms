.class final Lcom/android/server/telecom/BluetoothManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0x9

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    const-string v1, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-string v1, "==> new state: %s "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    .line 81
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothManager;->access$100(Lcom/android/server/telecom/BluetoothManager;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 83
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    const-string v1, "android.bluetooth.device.extra.DEVICE_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    const-string v2, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v2, "==> new state: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    if-ne v0, v9, :cond_5

    .line 93
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    iput-boolean v6, v0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnected:Z

    .line 96
    if-eq v1, v6, :cond_2

    if-ne v1, v8, :cond_3

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/telecom/BluetoothManager;->updateScreenStateForGearSound(Landroid/content/Context;Z)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    .line 111
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    iput-boolean v5, v0, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnected:Z

    .line 113
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-static {v0, v5}, Lcom/android/server/telecom/BluetoothManager;->access$202(Lcom/android/server/telecom/BluetoothManager;Z)Z

    goto :goto_0

    .line 101
    :cond_5
    if-ne v0, v7, :cond_4

    .line 104
    if-eq v1, v6, :cond_6

    if-ne v1, v8, :cond_7

    .line 106
    :cond_6
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0, p1, v6}, Lcom/android/server/telecom/BluetoothManager;->updateScreenStateForGearSound(Landroid/content/Context;Z)V

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->updateBluetoothState()V

    goto :goto_1

    .line 115
    :cond_8
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BluetoothAdapter.ACTION_STATE_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    if-ne v0, v9, :cond_9

    .line 119
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # getter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->access$000(Lcom/android/server/telecom/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothManager;->access$300(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)V

    goto/16 :goto_0

    .line 120
    :cond_9
    if-ne v0, v7, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothManager$2;->this$0:Lcom/android/server/telecom/BluetoothManager;

    # getter for: Lcom/android/server/telecom/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothManager;->access$000(Lcom/android/server/telecom/BluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothManager;->access$400(Lcom/android/server/telecom/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)V

    goto/16 :goto_0
.end method
