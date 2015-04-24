.class final Lcom/android/server/telecom/secutils/SecInCallAdapter$SecInCallAdapterHandler;
.super Landroid/os/Handler;
.source "SecInCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecInCallAdapterHandler"
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/SecInCallAdapter;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/SecInCallAdapter;B)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecInCallAdapter$SecInCallAdapterHandler;-><init>(Lcom/android/server/telecom/secutils/SecInCallAdapter;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_1

    .line 60
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    .line 61
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    const-string v1, "answerCall, unknown call id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 69
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 73
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->InCallUIWindowFocusChangeNotify(Z)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 80
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 81
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setPSBarring(Z)V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestModifyCall(I)V

    goto/16 :goto_0

    .line 96
    :pswitch_4
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    new-array v1, v1, [I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 100
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 101
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :pswitch_5
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->storeSpeakerState(Z)V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 115
    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    goto/16 :goto_0

    .line 122
    :pswitch_7
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestTransfer(Landroid/telecom/PhoneAccountHandle;)V

    goto/16 :goto_0

    .line 132
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 133
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setMultiSimDSDAForegoundPhoneId(I)V

    goto/16 :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
