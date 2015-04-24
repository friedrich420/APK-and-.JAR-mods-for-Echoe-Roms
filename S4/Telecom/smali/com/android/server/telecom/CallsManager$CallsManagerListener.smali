.class public Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.super Ljava/lang/Object;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallsManagerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onChangeInContent(I)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onConnectionServiceChanged$382ed448(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onIsVoipAudioModeChanged$57920a58()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onRingbackRequested$65500c84(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
