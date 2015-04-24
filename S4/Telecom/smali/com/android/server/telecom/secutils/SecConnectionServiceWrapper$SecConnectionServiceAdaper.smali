.class final Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;
.super Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;
.source "SecConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecConnectionServiceAdaper"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;B)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public final answerRingingCallInUI()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void
.end method

.method public final enableExpandedView(Z)V
    .locals 3

    .prologue
    .line 313
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableExpandedView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$400$14a35d76(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/google/common/base/Equivalences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalences;->enableExpandedView(Z)V

    .line 315
    return-void
.end method

.method public final enableSystemBarNavigation(Z)V
    .locals 3

    .prologue
    .line 318
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableSystemBarNavigation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$400$14a35d76(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/google/common/base/Equivalences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalences;->enableSystemBarNavigation(Z)V

    .line 320
    return-void
.end method

.method public final getMute()Z
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 292
    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    return v0
.end method

.method public final getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLowBatt()Z
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    .line 264
    :cond_0
    return v0
.end method

.method public final isSpeakerOn()Z
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 303
    iget-object v0, v0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public final onEpdgStateChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 255
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEpdgStateChanged = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->onEpdgStateChanged()V

    .line 257
    return-void
.end method

.method public final onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 200
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 201
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 202
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 203
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 207
    :cond_0
    return-void
.end method

.method public final onPostDialPause(Ljava/lang/String;CZ)V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 217
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 218
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 219
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 222
    return-void
.end method

.method public final onPostDialPauseComplete(Ljava/lang/String;C)V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 227
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 228
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method public final restartRingingOrCallWaiting()V
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->restartRingingOrCallWaiting()V

    .line 275
    return-void
.end method

.method public final saveModifiedCallLog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logModifyCall(Lcom/android/server/telecom/Call;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "call is empty saveModifiedCallLog"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 8

    .prologue
    .line 234
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecCallLogManager()Lcom/android/server/telecom/secutils/SecCallLogManager;

    move-result-object v1

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Ljava/lang/String;JJ)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "call is empty saveParticipantLog"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final selectSimForEmergency(I)I
    .locals 1

    .prologue
    .line 279
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectSimForEmergency$2563259(I)I

    move-result v0

    return v0
.end method

.method public final setMute(Z)V
    .locals 3

    .prologue
    .line 285
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMute flag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 287
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V

    .line 288
    return-void
.end method

.method public final setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSecCallExtra: callId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secCallExtra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 167
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 168
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    :cond_0
    return-void
.end method

.method public final silence()V
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->silence()V

    .line 270
    return-void
.end method

.method public final turnOnBluetooth(Z)V
    .locals 3

    .prologue
    .line 307
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "turnOnBluetooth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothFromEx(Z)V

    .line 310
    return-void
.end method

.method public final turnOnSpeaker(Z)V
    .locals 3

    .prologue
    .line 296
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "turnOnSpeaker = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 298
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    .line 299
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public final updateSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 3

    .prologue
    .line 185
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSecCallExtra: callId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSecCallExtra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 189
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 190
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;->this$0:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :cond_0
    return-void
.end method
