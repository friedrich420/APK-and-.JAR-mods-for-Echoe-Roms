.class final Lcom/android/server/telecom/InCallAdapter;
.super Lcom/android/internal/telecom/IInCallAdapter$Stub;
.source "InCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;
    }
.end annotation


# instance fields
.field private final mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;-><init>()V

    .line 215
    new-instance v0, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/InCallAdapter$InCallAdapterHandler;-><init>(Lcom/android/server/telecom/InCallAdapter;B)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    .line 220
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 221
    iput-object p1, p0, Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 222
    iput-object p2, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallIdMapper;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/InCallAdapter;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method


# virtual methods
.method public final answerCall(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 227
    const-string v0, "answerCall(%s,%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "GATE"

    const-string v1, "<GATE-M>ANSWER_CALL</GATE-M>"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 232
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    :cond_1
    return-void
.end method

.method public final conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 332
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 333
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    :cond_0
    return-void
.end method

.method public final disconnectCall(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    const-string v0, "disconnectCall: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    :cond_0
    return-void
.end method

.method public final holdCall(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 284
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "GATE"

    const-string v1, "<GATE-M>HOLD_CALL</GATE-M>"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    :cond_1
    return-void
.end method

.method public final mergeConference(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    :cond_0
    return-void
.end method

.method public final mute(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void

    :cond_0
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method public final phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 302
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 303
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    :cond_0
    return-void
.end method

.method public final playDtmfTone(Ljava/lang/String;C)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 252
    const-string v0, "playDtmfTone(%s,%c)"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, p2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :cond_0
    return-void
.end method

.method public final postDialContinue(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    const-string v2, "postDialContinue(%s)"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v2, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 272
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public final rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 240
    const-string v2, "rejectCall(%s,%b,%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v2, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 243
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 244
    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    iput v0, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 245
    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    :cond_1
    return-void
.end method

.method public final requestRcsObserver(II)V
    .locals 4

    .prologue
    .line 315
    const-string v0, "requestRcsObserver(%d,%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 318
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method

.method public final splitFromConference(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 343
    :cond_0
    return-void
.end method

.method public final stopDtmfTone(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    const-string v0, "stopDtmfTone(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    :cond_0
    return-void
.end method

.method public final swapConference(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    :cond_0
    return-void
.end method

.method public final turnOffProximitySensor(Z)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 367
    return-void
.end method

.method public final turnOnProximitySensor()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    return-void
.end method

.method public final unholdCall(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/server/telecom/InCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    :cond_0
    return-void
.end method
