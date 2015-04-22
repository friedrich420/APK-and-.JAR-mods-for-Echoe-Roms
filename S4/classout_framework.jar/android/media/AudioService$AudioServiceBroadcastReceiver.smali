.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2

    .prologue
    .line 5949
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 5949
    invoke-direct {p0, p1}, <init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5952
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 5953
    .local v10, "action":Ljava/lang/String;
    const/16 v27, 0x0

    .line 5954
    .local v27, "outDevice":I
    const/16 v21, 0x0

    .line 5955
    .local v21, "inDevice":I
    const/16 v30, 0x0

    .line 5957
    .local v30, "state":I
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 5958
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 5961
    .local v20, "dockState":I
    packed-switch v20, :pswitch_data_4a2

    .line 5976
    const/16 v18, 0x0

    .line 5979
    .local v18, "config":I
    :goto_20
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3d

    if-nez v20, :cond_3d

    .line 5980
    const-string v3, "AudioService"

    const-string v4, "EXTRA_DOCK_STATE_DESK onSendBecomingNoisyIntent "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/16 v4, 0x800

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;I)V

    .line 5995
    :cond_3d
    const/4 v3, 0x3

    move/from16 v0, v20

    if-eq v0, v3, :cond_55

    if-nez v20, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$9300(Landroid/media/AudioService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_55

    .line 5998
    :cond_4f
    const/4 v3, 0x3

    move/from16 v0, v18

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6000
    :cond_55
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move/from16 v0, v20

    # setter for: Landroid/media/AudioService;->mDockState:I
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9302(Landroid/media/AudioService;I)I

    .line 6226
    .end local v18    # "config":I
    .end local v20    # "dockState":I
    :cond_5e
    :goto_5e
    return-void

    .line 5963
    .restart local v20    # "dockState":I
    :pswitch_5f
    const/16 v18, 0x7

    .line 5964
    .restart local v18    # "config":I
    goto :goto_20

    .line 5966
    .end local v18    # "config":I
    :pswitch_62
    const/16 v18, 0x6

    .line 5967
    .restart local v18    # "config":I
    goto :goto_20

    .line 5969
    .end local v18    # "config":I
    :pswitch_65
    const/16 v18, 0x8

    .line 5970
    .restart local v18    # "config":I
    goto :goto_20

    .line 5972
    .end local v18    # "config":I
    :pswitch_68
    const/16 v18, 0x9

    .line 5973
    .restart local v18    # "config":I
    goto :goto_20

    .line 6001
    .end local v18    # "config":I
    .end local v20    # "dockState":I
    :cond_6b
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 6002
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 6004
    const/16 v27, 0x10

    .line 6005
    const v21, -0x7ffffff8

    .line 6006
    const/4 v11, 0x0

    .line 6008
    .local v11, "address":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/BluetoothDevice;

    .line 6009
    .local v16, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v16, :cond_5e

    .line 6013
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 6014
    invoke-virtual/range {v16 .. v16}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v15

    .line 6015
    .local v15, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v15, :cond_9f

    .line 6016
    invoke-virtual {v15}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    sparse-switch v3, :sswitch_data_4ae

    .line 6027
    :cond_9f
    :goto_9f
    invoke-static {v11}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 6028
    const-string v11, ""

    .line 6031
    :cond_a7
    const/4 v3, 0x2

    move/from16 v0, v30

    if-ne v0, v3, :cond_ee

    const/16 v19, 0x1

    .line 6032
    .local v19, "connected":Z
    :goto_ae
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v27

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move/from16 v0, v19

    move/from16 v1, v21

    # invokes: Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z
    invoke-static {v3, v0, v1, v11}, Landroid/media/AudioService;->access$9400(Landroid/media/AudioService;ZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    const/16 v31, 0x1

    .line 6034
    .local v31, "success":Z
    :goto_cc
    if-eqz v31, :cond_5e

    .line 6035
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 6036
    if-eqz v19, :cond_f4

    .line 6037
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, v16

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 6042
    :goto_e2
    monitor-exit v4

    goto/16 :goto_5e

    :catchall_e5
    move-exception v3

    monitor-exit v4
    :try_end_e7
    .catchall {:try_start_d9 .. :try_end_e7} :catchall_e5

    throw v3

    .line 6019
    .end local v19    # "connected":Z
    .end local v31    # "success":Z
    :sswitch_e8
    const/16 v27, 0x20

    .line 6020
    goto :goto_9f

    .line 6022
    :sswitch_eb
    const/16 v27, 0x40

    goto :goto_9f

    .line 6031
    :cond_ee
    const/16 v19, 0x0

    goto :goto_ae

    .line 6032
    .restart local v19    # "connected":Z
    :cond_f1
    const/16 v31, 0x0

    goto :goto_cc

    .line 6039
    .restart local v31    # "success":Z
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 6040
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v3}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V
    :try_end_103
    .catchall {:try_start_f4 .. :try_end_103} :catchall_e5

    goto :goto_e2

    .line 6044
    .end local v11    # "address":Ljava/lang/String;
    .end local v15    # "btClass":Landroid/bluetooth/BluetoothClass;
    .end local v16    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v19    # "connected":Z
    .end local v31    # "success":Z
    :cond_104
    const-string v3, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 6045
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 6047
    const-string v3, "card"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 6048
    .local v12, "alsaCard":I
    const-string v3, "device"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 6050
    .local v13, "alsaDevice":I
    const/4 v3, -0x1

    if-ne v12, v3, :cond_141

    const/4 v3, -0x1

    if-ne v13, v3, :cond_141

    const-string v28, ""

    .line 6053
    .local v28, "params":Ljava/lang/String;
    :goto_130
    const/16 v27, 0x2000

    .line 6054
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v28

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto/16 :goto_5e

    .line 6050
    .end local v28    # "params":Ljava/lang/String;
    :cond_141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_130

    .line 6055
    .end local v12    # "alsaCard":I
    .end local v13    # "alsaDevice":I
    :cond_15f
    const-string v3, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_188

    .line 6061
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 6063
    .local v24, "isDisabled":I
    if-nez v24, :cond_5e

    .line 6091
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;
    invoke-static {v3}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)Landroid/media/SamsungAudioService;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/media/SamsungAudioService;->porcessUsbAudioDevicePlug(Landroid/content/Intent;)V

    goto/16 :goto_5e

    .line 6092
    .end local v24    # "isDisabled":I
    :cond_188
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_270

    .line 6093
    const/4 v14, 0x0

    .line 6094
    .local v14, "broadcast":Z
    const/16 v29, -0x1

    .line 6095
    .local v29, "scoAudioState":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 6096
    :try_start_19c
    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 6098
    .local v17, "btState":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d5

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1d4

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1d4

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1d5

    .line 6102
    :cond_1d4
    const/4 v14, 0x1

    .line 6104
    :cond_1d5
    packed-switch v17, :pswitch_data_4bc

    .line 6126
    :cond_1d8
    :goto_1d8
    const/4 v14, 0x0

    .line 6129
    :cond_1d9
    :goto_1d9
    monitor-exit v4
    :try_end_1da
    .catchall {:try_start_19c .. :try_end_1da} :catchall_22e

    .line 6130
    if-eqz v14, :cond_5e

    .line 6131
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move/from16 v0, v29

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    .line 6134
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6135
    .local v26, "newIntent":Landroid/content/Intent;
    const-string v3, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6136
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, v26

    # invokes: Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9500(Landroid/media/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_5e

    .line 6106
    .end local v26    # "newIntent":Landroid/content/Intent;
    :pswitch_202
    const/16 v29, 0x1

    .line 6107
    :try_start_204
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1d9

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1d9

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1d9

    .line 6110
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    goto :goto_1d9

    .line 6129
    .end local v17    # "btState":I
    :catchall_22e
    move-exception v3

    monitor-exit v4
    :try_end_230
    .catchall {:try_start_204 .. :try_end_230} :catchall_22e

    throw v3

    .line 6114
    .restart local v17    # "btState":I
    :pswitch_231
    const/16 v29, 0x0

    .line 6115
    :try_start_233
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    .line 6116
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    goto :goto_1d9

    .line 6119
    :pswitch_245
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1d8

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1d8

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1d8

    .line 6122
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I
    :try_end_26e
    .catchall {:try_start_233 .. :try_end_26e} :catchall_22e

    goto/16 :goto_1d8

    .line 6138
    .end local v14    # "broadcast":Z
    .end local v17    # "btState":I
    .end local v29    # "scoAudioState":I
    :cond_270
    const-string v3, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_387

    .line 6139
    const-string/jumbo v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 6140
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    .line 6141
    .local v23, "isConnected":Z
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### WiFi Display device state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### WiFi Display device isConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6143
    const/16 v22, 0x0

    .line 6144
    .local v22, "isChangePath":Z
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTRA_INTENDED_CHANGEPATH from Wifi manager : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6145
    if-nez v22, :cond_2f2

    .line 6146
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const v4, 0x808000

    move/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    .line 6148
    :cond_2f2
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_368

    if-nez v23, :cond_368

    .line 6149
    const-string v3, "count"

    const/16 v4, 0x780

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 6150
    .local v25, "nBufCnt":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXTERNAL_WIFI_CONNECTED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wfdBufferCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6152
    const/high16 v3, 0x800000

    const/4 v4, 0x1

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6155
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/high16 v5, 0x800000

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wfdBufferCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5e

    .line 6156
    .end local v25    # "nBufCnt":I
    :cond_368
    if-nez v30, :cond_5e

    if-eqz v23, :cond_5e

    .line 6157
    const/high16 v3, 0x800000

    const/4 v4, 0x0

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 6160
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5e

    .line 6162
    .end local v22    # "isChangePath":Z
    .end local v23    # "isConnected":Z
    :cond_387
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b8

    .line 6163
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_3b0

    .line 6164
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioOrientationEventListener;->onOrientationChanged(I)V

    .line 6165
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 6167
    :cond_3b0
    const-string/jumbo v3, "screen_state=on"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 6168
    :cond_3b8
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3dd

    .line 6169
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v3

    if-eqz v3, :cond_3d5

    .line 6171
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;
    invoke-static {v3}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioService$AudioOrientationEventListener;->disable()V

    .line 6173
    :cond_3d5
    const-string/jumbo v3, "screen_state=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 6174
    :cond_3dd
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f0

    .line 6175
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    # invokes: Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V
    invoke-static {v3, v0}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;Landroid/content/Context;)V

    goto/16 :goto_5e

    .line 6176
    :cond_3f0
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43b

    .line 6178
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6186
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    .line 6189
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    # invokes: Landroid/media/AudioService;->readAudioSettings(Z)V
    invoke-static {v3, v4}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;Z)V

    .line 6192
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v8}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_5e

    .line 6201
    :cond_43b
    const-string v3, "com.samsung.sec.knox.KNOX_MODE_CHANGED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 6202
    const-string/jumbo v3, "persona_id"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 6203
    .local v7, "lockedPersonaId":I
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFocusControl;->getUserIdForCurrentAudioFocus()I

    move-result v32

    .line 6205
    .local v32, "userIdForCurrentAudioFocus":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AS.onReceive() persona not active: lockedPersonaId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; userIdForCurrentAudioFocus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    const/4 v3, -0x1

    if-eq v7, v3, :cond_5e

    move/from16 v0, v32

    if-ne v7, v0, :cond_5e

    .line 6211
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v3

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6221
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;
    invoke-static {v3}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaFocusControl;->discardAudioFocusOwner()V

    goto/16 :goto_5e

    .line 5961
    :pswitch_data_4a2
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_62
        :pswitch_65
        :pswitch_68
    .end packed-switch

    .line 6016
    :sswitch_data_4ae
    .sparse-switch
        0x404 -> :sswitch_e8
        0x408 -> :sswitch_e8
        0x420 -> :sswitch_eb
    .end sparse-switch

    .line 6104
    :pswitch_data_4bc
    .packed-switch 0xa
        :pswitch_231
        :pswitch_245
        :pswitch_202
    .end packed-switch
.end method
