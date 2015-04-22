.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeAliveState"
.end annotation


# instance fields
.field mTryCell:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 3

    .prologue
    .line 3225
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    .line 3226
    const/4 v0, 0x1

    iput-boolean v0, p0, mTryCell:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3229
    invoke-virtual {p0}, turnOnMasterTetherSettings()Z

    .line 3231
    iput-boolean v0, p0, mTryCell:Z

    .line 3236
    iget-boolean v1, p0, mTryCell:Z

    invoke-virtual {p0, v1}, chooseUpstreamType(Z)V

    .line 3237
    iget-boolean v1, p0, mTryCell:Z

    if-nez v1, :cond_12

    :goto_f
    iput-boolean v0, p0, mTryCell:Z

    .line 3238
    return-void

    .line 3237
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public exit()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3241
    invoke-virtual {p0}, turnOffUpstreamMobileConnection()Z

    .line 3244
    invoke-virtual {p0, v0, v0}, notifyTetheredOfNewUpstreamIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3248
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TetherModeAliveState.processMessage what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const/4 v6, 0x1

    .line 3250
    .local v6, "retValue":Z
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_18c

    .line 3350
    const/4 v6, 0x0

    .line 3353
    :cond_23
    :goto_23
    return v6

    .line 3252
    :pswitch_24
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3254
    .local v7, "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3258
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3259
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "iface"

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    const-string v8, "actualIface"

    iget-object v9, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mActualUpstreamIfaceName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    const/16 v8, 0xc

    invoke-virtual {v7, v8, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_23

    .line 3265
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_52
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3267
    .restart local v7    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3268
    .local v2, "index":I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_116

    .line 3269
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TetherModeAlive removing notifyee "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3271
    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 3272
    invoke-virtual {p0}, turnOffMasterTetherSettings()Z

    .line 3290
    :cond_93
    :goto_93
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v9, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetheredIfaceName:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7202(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_23

    .line 3275
    :cond_9a
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TetherModeAlive still has "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " live requests:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "o":Ljava/lang/Object;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    .line 3280
    .end local v5    # "o":Ljava/lang/Object;
    :cond_ef
    iget-object v10, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v8, :cond_93

    .line 3281
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3282
    .local v0, "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    const-string v8, "ncm0"

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 3283
    invoke-virtual {p0}, blockDataForNCM()V

    goto/16 :goto_93

    .line 3288
    .end local v0    # "curSM":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_116
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherModeAliveState UNREQUESTED has unknown who: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    .line 3298
    .end local v2    # "index":I
    .end local v7    # "who":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_130
    iput-boolean v8, p0, mTryCell:Z

    .line 3299
    iget-boolean v10, p0, mTryCell:Z

    invoke-virtual {p0, v10}, chooseUpstreamType(Z)V

    .line 3315
    iget-boolean v10, p0, mTryCell:Z

    if-nez v10, :cond_13f

    :goto_13b
    iput-boolean v8, p0, mTryCell:Z

    goto/16 :goto_23

    :cond_13f
    move v8, v9

    goto :goto_13b

    .line 3320
    :pswitch_141
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v9, :cond_23

    .line 3326
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v8

    invoke-virtual {p0, v8}, turnOnUpstreamMobileConnection(I)Z

    goto/16 :goto_23

    .line 3333
    :pswitch_156
    iget-boolean v10, p0, mTryCell:Z

    invoke-virtual {p0, v10}, chooseUpstreamType(Z)V

    .line 3334
    iget-boolean v10, p0, mTryCell:Z

    if-nez v10, :cond_163

    :goto_15f
    iput-boolean v8, p0, mTryCell:Z

    goto/16 :goto_23

    :cond_163
    move v8, v9

    goto :goto_15f

    .line 3339
    :pswitch_165
    const/4 v4, 0x0

    .line 3341
    .local v4, "nwkInfo":Landroid/net/NetworkInfo;
    :try_start_166
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$7300(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_172
    .catch Landroid/os/RemoteException; {:try_start_166 .. :try_end_172} :catch_189

    move-result-object v4

    .line 3343
    :goto_173
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 3344
    const-string v8, "Tethering"

    const-string/jumbo v10, "wifi is connected, reset retry count."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    iget-object v8, p0, this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iput v9, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mRetryCount:I

    goto/16 :goto_23

    .line 3342
    :catch_189
    move-exception v8

    goto :goto_173

    .line 3250
    nop

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_52
        :pswitch_130
        :pswitch_141
        :pswitch_156
        :pswitch_165
    .end packed-switch
.end method
