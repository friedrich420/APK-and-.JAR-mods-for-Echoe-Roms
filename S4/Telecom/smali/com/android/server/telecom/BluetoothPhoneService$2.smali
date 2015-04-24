.class final Lcom/android/server/telecom/BluetoothPhoneService$2;
.super Landroid/os/Handler;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 256
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    .line 260
    const-string v6, "BluetoothPhoneService"

    const-string v7, "handleMessage(%d) / param %s"

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    if-nez v0, :cond_2

    move-object v2, v1

    :goto_1
    aput-object v2, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 426
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 256
    goto :goto_0

    .line 260
    :cond_2
    iget v2, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 268
    :pswitch_0
    :try_start_0
    const-string v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v2

    .line 270
    const-string v6, "BluetoothPhoneService"

    const-string v7, "MSG_ANSWER_CALL! phoneId = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 272
    if-nez v2, :cond_3

    .line 273
    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 274
    const-string v1, "BluetoothPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MSG_ANSWER_CALL! get again call = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 281
    const/4 v1, 0x0

    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 285
    :cond_4
    if-eqz v2, :cond_6

    move v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 277
    :cond_5
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_3

    :cond_6
    move v1, v4

    .line 285
    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_5
    if-eqz v2, :cond_7

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_7
    move v3, v4

    goto :goto_6

    .line 287
    :pswitch_1
    :try_start_3
    const-string v2, "feature_multisim_dsda"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 292
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v2

    .line 293
    const-string v6, "BluetoothPhoneService"

    const-string v7, "MSG_HANGUP_CALL! phoneId = %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v6

    .line 296
    if-ne v2, v3, :cond_b

    .line 297
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v7

    .line 298
    if-eqz v7, :cond_8

    .line 299
    const-string v7, "BluetoothPhoneService"

    const-string v8, "MSG_HANGUP_CALL! set mOtherNumHeldCalls to 1 phoneId = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v7, v8}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    .line 301
    if-eqz v6, :cond_8

    .line 302
    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    .line 303
    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    .line 317
    :cond_8
    :goto_7
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    .line 319
    :cond_9
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    .line 320
    if-eqz v2, :cond_a

    .line 321
    :try_start_4
    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 324
    :cond_a
    if-eqz v2, :cond_c

    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 307
    :cond_b
    const/4 v7, 0x1

    :try_start_5
    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v7

    .line 308
    if-eqz v7, :cond_8

    .line 309
    const-string v7, "BluetoothPhoneService"

    const-string v8, "MSG_HANGUP_CALL! set mOtherNumHeldCalls to 1 phoneId = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v7, v8}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    .line 311
    if-eqz v6, :cond_8

    .line 312
    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    .line 313
    iget-object v6, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v6, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    .line 324
    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_9
    if-eqz v2, :cond_d

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_c
    move v3, v4

    goto :goto_8

    :cond_d
    move v3, v4

    goto :goto_a

    .line 326
    :pswitch_2
    :try_start_6
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    .line 331
    if-eqz v2, :cond_e

    .line 334
    :try_start_7
    iget v1, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    int-to-char v1, v1

    invoke-virtual {v5, v2, v1}, Lcom/android/server/telecom/CallsManager;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    .line 335
    invoke-virtual {v5, v2}, Lcom/android/server/telecom/CallsManager;->stopDtmfTone(Lcom/android/server/telecom/Call;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 338
    :cond_e
    if-eqz v2, :cond_f

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    move v3, v4

    goto :goto_b

    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_c
    if-eqz v2, :cond_10

    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    :cond_10
    move v3, v4

    goto :goto_d

    .line 340
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 345
    :try_start_8
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget v3, v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    invoke-static {v1, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->access$700(Lcom/android/server/telecom/BluetoothPhoneService;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v1

    .line 347
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 354
    :pswitch_4
    :try_start_9
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_11

    .line 356
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_11

    .line 358
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result-object v1

    .line 362
    :cond_11
    :try_start_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 363
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 366
    if-nez v1, :cond_12

    .line 368
    const-string v2, "BluetoothPhoneService"

    const-string v3, "address is null due to No Service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    const-string v1, ""
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 373
    :cond_12
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_4
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_e
    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 380
    :pswitch_5
    :try_start_b
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_13

    .line 382
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v1

    .line 390
    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 385
    :cond_13
    :try_start_c
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-result-object v1

    goto :goto_f

    .line 390
    :catchall_5
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v2

    .line 392
    :pswitch_6
    :try_start_d
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$900(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 401
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_6
    move-exception v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 403
    :pswitch_7
    :try_start_e
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 409
    if-eqz v0, :cond_0

    .line 410
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 409
    :catchall_7
    move-exception v1

    if-eqz v0, :cond_14

    .line 410
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_14
    throw v1

    .line 417
    :pswitch_8
    :try_start_f
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$2;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1000(Lcom/android/server/telecom/BluetoothPhoneService;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 419
    :catchall_8
    move-exception v1

    if-eqz v0, :cond_15

    .line 420
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_15
    throw v1

    .line 373
    :catchall_9
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_e

    .line 338
    :catchall_a
    move-exception v1

    goto/16 :goto_c

    .line 324
    :catchall_b
    move-exception v1

    goto/16 :goto_9

    .line 285
    :catchall_c
    move-exception v1

    goto/16 :goto_5

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method
