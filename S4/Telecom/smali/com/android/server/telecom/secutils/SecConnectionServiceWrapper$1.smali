.class final Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;
.super Landroid/os/Handler;
.source "SecConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 61
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage: msg.what : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-static {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 76
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 81
    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/SecCallExtra;

    .line 82
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    .line 83
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    invoke-static {}, Lcom/android/server/telecom/secutils/MinuteMinder;->stopMinuteMinderAlarm()V

    .line 85
    invoke-static {v3}, Lcom/android/server/telecom/secutils/MinuteMinder;->startMinuteMinderAlarm(Landroid/content/Context;)V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v3}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeSecCall(Lcom/android/server/telecom/Call;Lcom/android/services/telephony/common/SecCallExtra;)Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 92
    const-string v3, "ctc_call_time_duration"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v3

    .line 95
    :goto_1
    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 96
    :goto_2
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    .line 101
    :cond_2
    if-eqz v4, :cond_3

    .line 102
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 94
    goto :goto_1

    :cond_5
    move v1, v2

    .line 95
    goto :goto_2

    .line 106
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 109
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 114
    :try_start_2
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_6

    .line 116
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v2, v4, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$200(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->answerRingingCallInUI()V

    goto/16 :goto_0

    .line 129
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 131
    :try_start_3
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onPostDialPause(Ljava/lang/String;CZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 136
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 141
    :try_start_4
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onPostDialPauseComplete$505d15a2(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
