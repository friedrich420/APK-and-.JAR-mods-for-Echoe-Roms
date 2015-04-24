.class public final Lcom/android/server/telecom/secutils/SecInCallAdapter;
.super Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;
.source "SecInCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/SecInCallAdapter$SecInCallAdapterHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;-><init>()V

    .line 140
    new-instance v0, Lcom/android/server/telecom/secutils/SecInCallAdapter$SecInCallAdapterHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SecInCallAdapter$SecInCallAdapterHandler;-><init>(Lcom/android/server/telecom/secutils/SecInCallAdapter;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 145
    return-void
.end method


# virtual methods
.method public final InCallUIWindowFocusNotify(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 208
    const-string v0, "InCallUIWindowFocusNotify(%b)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    return-void
.end method

.method public final answerCallWithSpeaker(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    const-string v0, "answerCallWithSpeaker(%s,%b)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 153
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 154
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    return-void
.end method

.method public final checkDrivelink()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkDriveLink$304ff7b3(Landroid/content/Context;Z)V

    .line 184
    return-void
.end method

.method public final checkVideoRecorder()Z
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkVideoRecorder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    return v0
.end method

.method public final checkVoiceRecorder()Z
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkVoiceRecorder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    return v0
.end method

.method public final explicitCallTransfer()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public final getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_0
    return-object p1
.end method

.method public final getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_0
    return-object p1
.end method

.method public final isBluetoothAvailable()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 218
    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v0

    .line 219
    return v0
.end method

.method public final isRoamingArea()Z
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method public final requestModifyCall(I)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 195
    return-void
.end method

.method public final respondModifyCall(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 200
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 201
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void
.end method

.method public final setModifiedCall()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "setModifiedCall :"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->onModifiedCall()V

    .line 263
    return-void
.end method

.method public final setMultiSimDSDAForegoundPhoneId(I)V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMultiSimDSDAForegoundPhoneId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method

.method public final setPSBarring(Z)V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public final shouldVibrate()Z
    .locals 3

    .prologue
    .line 176
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Ringer;->shouldVibrate(Landroid/content/Context;)Z

    move-result v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldVibrate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return v0
.end method

.method public final silentRinger()V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Ringer;->silence()V

    .line 234
    return-void
.end method

.method public final storeSpeakerState(Z)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    return-void
.end method

.method public final turnOnBluetooth(Z)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method
