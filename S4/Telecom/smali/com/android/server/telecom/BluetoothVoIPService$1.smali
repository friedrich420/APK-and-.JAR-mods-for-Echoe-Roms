.class final Lcom/android/server/telecom/BluetoothVoIPService$1;
.super Landroid/os/Handler;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$000(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/CallsManager;

    .line 144
    const-string v4, "BluetoothVoIPService"

    const-string v5, "handleMessage(%d) / param %s"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    if-nez v0, :cond_2

    move-object v2, v1

    :goto_1
    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 251
    :cond_0
    :goto_2
    :pswitch_0
    return-void

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    iget v2, v0, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->param:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 153
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 154
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIncoming()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 160
    :goto_3
    const-string v2, "BluetoothVoIPService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "answerCall : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 160
    :catch_0
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "answerCall : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 160
    :catchall_0
    move-exception v1

    const-string v2, "BluetoothVoIPService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "answerCall : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 163
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 168
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v1

    if-nez v1, :cond_9

    .line 169
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 174
    :goto_4
    const-string v2, "BluetoothVoIPService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hangupCall : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 174
    :catch_1
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "hangupCall : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 174
    :catchall_1
    move-exception v1

    const-string v2, "BluetoothVoIPService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hangupCall : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 177
    :pswitch_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 182
    :try_start_2
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    iget v3, v0, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->param:I

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->processChld(I)Z
    invoke-static {v1, v3}, Lcom/android/server/telecom/BluetoothVoIPService;->access$200(Lcom/android/server/telecom/BluetoothVoIPService;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 191
    :pswitch_4
    :try_start_3
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$300(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_4

    .line 193
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 199
    :cond_4
    :try_start_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move-result-object v1

    .line 204
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_5
    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 211
    :pswitch_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$300(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_6

    .line 213
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result-object v1

    .line 220
    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 216
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v1

    goto :goto_6

    .line 220
    :catchall_4
    move-exception v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v2

    .line 222
    :pswitch_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$500(Lcom/android/server/telecom/BluetoothVoIPService;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 228
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_5
    move-exception v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    throw v1

    .line 230
    :pswitch_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->updateHeadsetWithVoIPState$1385ff()V
    invoke-static {v1, v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$600(Lcom/android/server/telecom/BluetoothVoIPService;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 236
    :catchall_6
    move-exception v1

    if-eqz v0, :cond_7

    .line 237
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_7
    throw v1

    .line 243
    :pswitch_8
    :try_start_9
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService$1;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->callStarted()V
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$700(Lcom/android/server/telecom/BluetoothVoIPService;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 245
    :catchall_7
    move-exception v1

    if-eqz v0, :cond_8

    .line 246
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->setResult(Ljava/lang/Object;)V

    :cond_8
    throw v1

    .line 204
    :catchall_8
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :cond_9
    move v1, v3

    goto/16 :goto_4

    :cond_a
    move v1, v3

    goto/16 :goto_3

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method
