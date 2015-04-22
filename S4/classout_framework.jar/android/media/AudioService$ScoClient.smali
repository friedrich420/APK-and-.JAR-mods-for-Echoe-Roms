.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3199
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3200
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 3201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, mCreatorPid:I

    .line 3202
    const/4 v0, 0x0

    iput v0, p0, mStartcount:I

    .line 3203
    return-void
.end method

.method private requestScoState(II)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "scoAudioMode"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 3291
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)V

    .line 3292
    invoke-virtual {p0}, totalCount()I

    move-result v1

    if-nez v1, :cond_90

    .line 3293
    const/16 v1, 0xc

    if-ne p1, v1, :cond_cf

    .line 3296
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v5}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    .line 3299
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3300
    :try_start_20
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    iget v3, p0, mCreatorPid:I

    if-ne v1, v3, :cond_c8

    :cond_41
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v6, :cond_c8

    .line 3304
    :cond_51
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-nez v1, :cond_bb

    .line 3320
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    # setter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$3002(Landroid/media/AudioService;I)I

    .line 3322
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 3324
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v5, :cond_91

    .line 3325
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 3331
    .local v0, "status":Z
    :goto_87
    if-eqz v0, :cond_a2

    .line 3332
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    .line 3347
    .end local v0    # "status":Z
    :cond_8f
    :goto_8f
    monitor-exit v2

    .line 3381
    :cond_90
    :goto_90
    return-void

    .line 3328
    :cond_91
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .restart local v0    # "status":Z
    goto :goto_87

    .line 3334
    :cond_a2
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    goto :goto_8f

    .line 3347
    .end local v0    # "status":Z
    :catchall_a9
    move-exception v1

    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_20 .. :try_end_ab} :catchall_a9

    throw v1

    .line 3337
    :cond_ac
    :try_start_ac
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 3338
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    goto :goto_8f

    .line 3341
    :cond_bb
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    .line 3342
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    goto :goto_8f

    .line 3345
    :cond_c8
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_a9

    goto :goto_8f

    .line 3348
    :cond_cf
    const/16 v1, 0xa

    if-ne p1, v1, :cond_90

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-eq v1, v2, :cond_e3

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v3, :cond_90

    .line 3351
    :cond_e3
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v2, :cond_17a

    .line 3352
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_16b

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_16b

    .line 3354
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)I

    move-result v1

    if-ne v1, v5, :cond_15a

    .line 3355
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 3365
    .restart local v0    # "status":Z
    :goto_113
    if-eqz v0, :cond_121

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_90

    .line 3366
    :cond_121
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScoState stopScoUsingVirtualVoiceCall status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScoDevices.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    .line 3369
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    goto/16 :goto_90

    .line 3358
    .end local v0    # "status":Z
    :cond_15a
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .restart local v0    # "status":Z
    goto :goto_113

    .line 3372
    .end local v0    # "status":Z
    :cond_16b
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$3300(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 3373
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v6}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    goto/16 :goto_90

    .line 3376
    :cond_17a
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$2902(Landroid/media/AudioService;I)I

    .line 3377
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v1, v4}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;I)V

    goto/16 :goto_90
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 3206
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3207
    :try_start_7
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3209
    .local v0, "index":I
    if-gez v0, :cond_24

    .line 3210
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :goto_22
    monitor-exit v2

    .line 3216
    return-void

    .line 3212
    :cond_24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, clearCount(Z)V

    .line 3213
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_22

    .line 3215
    .end local v0    # "index":I
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public clearCount(Z)V
    .registers 7
    .param p1, "stopSco"    # Z

    .prologue
    .line 3252
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3253
    :try_start_7
    iget v1, p0, mStartcount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_40

    if-eqz v1, :cond_11

    .line 3255
    :try_start_b
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_11} :catch_1e
    .catchall {:try_start_b .. :try_end_11} :catchall_40

    .line 3260
    :cond_11
    :goto_11
    const/4 v1, 0x0

    :try_start_12
    iput v1, p0, mStartcount:I

    .line 3261
    if-eqz p1, :cond_1c

    .line 3262
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, requestScoState(II)V

    .line 3264
    :cond_1c
    monitor-exit v2

    .line 3265
    return-void

    .line 3256
    :catch_1e
    move-exception v0

    .line 3257
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 3264
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public decCount()V
    .registers 5

    .prologue
    .line 3234
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3235
    :try_start_7
    iget v1, p0, mStartcount:I

    if-nez v1, :cond_14

    .line 3236
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    :goto_12
    monitor-exit v2

    .line 3249
    return-void

    .line 3238
    :cond_14
    iget v1, p0, mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mStartcount:I

    .line 3239
    iget v1, p0, mStartcount:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2b

    if-nez v1, :cond_24

    .line 3241
    :try_start_1e
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_24
    .catch Ljava/util/NoSuchElementException; {:try_start_1e .. :try_end_24} :catch_2e
    .catchall {:try_start_1e .. :try_end_24} :catchall_2b

    .line 3246
    :cond_24
    :goto_24
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_27
    invoke-direct {p0, v1, v3}, requestScoState(II)V

    goto :goto_12

    .line 3248
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v1

    .line 3242
    :catch_2e
    move-exception v0

    .line 3243
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_2f
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2b

    goto :goto_24
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3268
    iget v0, p0, mStartcount:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 3276
    iget v0, p0, mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .registers 7
    .param p1, "scoAudioMode"    # I

    .prologue
    .line 3219
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 3220
    const/16 v1, 0xc

    :try_start_9
    invoke-direct {p0, v1, p1}, requestScoState(II)V

    .line 3221
    iget v1, p0, mStartcount:I
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_40

    if-nez v1, :cond_16

    .line 3223
    :try_start_10
    iget-object v1, p0, mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_1e
    .catchall {:try_start_10 .. :try_end_16} :catchall_40

    .line 3229
    :cond_16
    :goto_16
    :try_start_16
    iget v1, p0, mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mStartcount:I

    .line 3230
    monitor-exit v2

    .line 3231
    return-void

    .line 3224
    :catch_1e
    move-exception v0

    .line 3226
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3230
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public totalCount()I
    .registers 6

    .prologue
    .line 3280
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 3281
    const/4 v0, 0x0

    .line 3282
    .local v0, "count":I
    :try_start_8
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3283
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_29

    .line 3284
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 3283
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3286
    :cond_29
    monitor-exit v4

    return v0

    .line 3287
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_2b

    throw v3
.end method
