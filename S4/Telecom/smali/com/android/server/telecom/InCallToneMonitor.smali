.class public final Lcom/android/server/telecom/InCallToneMonitor;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "InCallToneMonitor.java"


# instance fields
.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallTonePlayer$Factory;Lcom/android/server/telecom/CallsManager;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/telecom/InCallToneMonitor;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    .line 36
    iput-object p2, p0, Lcom/android/server/telecom/InCallToneMonitor;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 37
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget-object v4, p0, Lcom/android/server/telecom/InCallToneMonitor;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 42
    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "Disconnect cause: %s."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->playDisconnectToneAboutRingingCall(Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/telecom/DisconnectCause;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "Disconnect cause: %s."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getTone()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v0, v2

    .line 83
    :goto_1
    :sswitch_0
    const-string v4, "Found a disconnected call with tone to play %d."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {p0, v4, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    if-eq v0, v3, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->needToPlayEndToneForIMS(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z

    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 58
    goto :goto_1

    .line 60
    :sswitch_2
    const/4 v0, 0x6

    .line 61
    goto :goto_1

    .line 63
    :sswitch_3
    const/16 v0, 0xa

    .line 64
    goto :goto_1

    .line 69
    :sswitch_4
    const/4 v0, 0x5

    .line 70
    goto :goto_1

    .line 72
    :sswitch_5
    const/16 v0, 0xc

    .line 73
    goto :goto_1

    .line 76
    :sswitch_6
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "call_end_tone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_4

    .line 77
    const-string v0, "Call disconnect tone is unchecked."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 78
    goto :goto_1

    .line 88
    :cond_3
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/server/telecom/InCallToneMonitor;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    .line 90
    iget-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x15 -> :sswitch_5
        0x1b -> :sswitch_6
        0x25 -> :sswitch_0
        0x26 -> :sswitch_3
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method public final stopCallEndTone()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "stopCallEndTone"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallToneMonitor;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    .line 100
    :cond_0
    return-void
.end method
