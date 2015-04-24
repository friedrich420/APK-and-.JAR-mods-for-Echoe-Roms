.class public final Lcom/android/server/telecom/CallAudioManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "CallAudioManager.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallAudioManager$RouteRequester;
    }
.end annotation


# static fields
.field public static mIsInCallUIFocused:Z


# instance fields
.field private mAudioFocusStreamType:I

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioState:Landroid/telecom/AudioState;

.field private final mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mIsModifyCall:Z

.field private mIsRinging:Z

.field private mIsTonePlaying:Z

.field private final mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

.field private mVTendToneStoped:Z

.field public mWasSpeakerOn:Z

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mVTendToneStoped:Z

    .line 66
    iput-object p2, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    .line 67
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    new-instance v0, Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/BluetoothManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallAudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    .line 69
    iput-object p3, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    .line 70
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    .line 71
    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/CallAudioManager;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/telecom/CallAudioManager;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/CallAudioManager;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    return-void
.end method

.method private calculateSupportedRoutes()I
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    const/16 v0, 0xc

    .line 799
    :goto_0
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    or-int/lit8 v0, v0, 0x2

    .line 803
    :cond_0
    return v0

    .line 796
    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private static getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 874
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIncomingCallAnswered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 881
    :cond_0
    return-object v0
.end method

.method private getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;
    .locals 4

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v1

    .line 808
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    .line 820
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothWatchSingleConnected()Z

    move-result v2

    .line 821
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 822
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 829
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v2, Landroid/telecom/AudioState;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/telecom/AudioState;-><init>(ZII)V

    return-object v2

    .line 828
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasFocus()Z
    .locals 2

    .prologue
    .line 890
    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasRingingForegroundCall()Z
    .locals 2

    .prologue
    .line 885
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallUpdated(Lcom/android/server/telecom/Call;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eqz v0, :cond_5

    move v0, v1

    .line 401
    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v4

    .line 403
    iget-object v5, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 404
    if-eqz p1, :cond_a

    .line 405
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "call.getState() : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-eq v3, v8, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 408
    :cond_0
    const-string v3, "updating audio mode "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 416
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_a

    .line 417
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    .line 420
    :goto_2
    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDockOn()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v6}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v6

    if-nez v6, :cond_7

    .line 422
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-eq v0, v8, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v9, :cond_4

    .line 424
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    const/16 v1, 0x8

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    .line 425
    const-string v0, "set initial audio route to speaker"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    .line 400
    goto/16 :goto_0

    .line 412
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 413
    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    goto :goto_1

    .line 428
    :cond_7
    if-eqz v0, :cond_8

    iget v6, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-nez v6, :cond_8

    .line 429
    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    goto :goto_3

    .line 430
    :cond_8
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    const/16 v6, 0xb

    if-ne v0, v6, :cond_4

    .line 431
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_4

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-nez v0, :cond_9

    const/4 v0, 0x5

    if-ne v3, v0, :cond_4

    .line 435
    :cond_9
    new-instance v0, Landroid/telecom/AudioState;

    invoke-direct {v0, v2, v1, v4}, Landroid/telecom/AudioState;-><init>(ZII)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 436
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    .line 437
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    goto :goto_3

    :cond_a
    move v3, v2

    goto/16 :goto_2
.end method

.method private requestAudioFocusAndSetMode(II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 698
    const-string v2, "requestAudioFocusAndSetMode, stream: %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/telecom/CallAudioManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/telecom/CallAudioManager$1;-><init>(Lcom/android/server/telecom/CallAudioManager;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 717
    return-void

    :cond_0
    move v0, v1

    .line 699
    goto :goto_0
.end method

.method private saveAudioState(Landroid/telecom/AudioState;)V
    .locals 3

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 395
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/StatusBarNotifier;->notifyMute(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/StatusBarNotifier;->notifySpeakerphone(Z)V

    .line 397
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectWiredOrEarpiece(II)I
    .locals 2

    .prologue
    .line 779
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 780
    and-int/lit8 p1, p2, 0x5

    .line 781
    if-nez p1, :cond_0

    .line 782
    const-string v0, "One of wired headset or earpiece should always be valid."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    const/4 p1, 0x1

    .line 787
    :cond_0
    return p1
.end method

.method private setInitialAudioState(Lcom/android/server/telecom/Call;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    .line 840
    const-string v1, "setInitialAudioState %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    const-string v0, "trying to initialize audio state while tone is playing, abort."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 850
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-boolean v2, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget v3, v0, Landroid/telecom/AudioState;->route:I

    iget v4, v0, Landroid/telecom/AudioState;->supportedRouteMask:I

    sget-object v5, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 736
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 737
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 738
    const-string v0, "Request to change audio mode from %d to %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 742
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNeedtoSetMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)Z

    move-result v5

    .line 744
    if-eqz v4, :cond_5

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v0, v6, :cond_5

    move v0, v1

    .line 750
    :goto_0
    if-eqz v4, :cond_1

    if-ne v3, v1, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    .line 752
    const-string v0, "No Audio mode change..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    .line 773
    return-void

    .line 755
    :cond_1
    if-ne v3, p1, :cond_2

    iget-boolean v6, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    if-eqz v0, :cond_0

    .line 756
    :cond_2
    if-ne v3, v8, :cond_3

    if-ne p1, v1, :cond_3

    .line 757
    const-string v0, "Transition from IN_CALL -> RINGTONE. Resetting to NORMAL first."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 760
    :cond_3
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 762
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    .line 763
    const-string v0, "call.getState() : %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v4, v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V

    .line 768
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private setSystemAudioState(ZII)V
    .locals 6

    .prologue
    .line 468
    const/4 v1, 0x0

    sget-object v5, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    .line 469
    return-void
.end method

.method private setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V
    .locals 6

    .prologue
    .line 464
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    .line 465
    return-void
.end method

.method private setSystemAudioState(ZZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 478
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    const-string v0, "force_initial_audiostate"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 486
    new-instance v1, Landroid/telecom/AudioState;

    invoke-direct {v1, p2, p3, p4}, Landroid/telecom/AudioState;-><init>(ZII)V

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    .line 487
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 490
    :cond_2
    const-string v1, "changing audio state from %s to %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 494
    const-string v1, "changing microphone mute state to: %b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v3, v3, Landroid/telecom/AudioState;->isMuted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v2, v2, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 499
    :cond_3
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-ne v1, v6, :cond_7

    .line 501
    const-string v1, "incoming_call_popup_osup"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/telecom/AudioState;->route:I

    if-ne v1, v7, :cond_5

    sget-boolean v1, Lcom/android/server/telecom/CallAudioManager;->mIsInCallUIFocused:Z

    if-nez v1, :cond_5

    .line 503
    new-instance v1, Landroid/telecom/AudioState;

    iget v2, v0, Landroid/telecom/AudioState;->route:I

    invoke-direct {v1, p2, v2, p4}, Landroid/telecom/AudioState;-><init>(ZII)V

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    .line 504
    invoke-virtual {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    .line 505
    sput-boolean v4, Lcom/android/server/telecom/CallAudioManager;->mIsInCallUIFocused:Z

    .line 513
    :goto_1
    sget-object v1, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v1, :cond_6

    .line 514
    invoke-virtual {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    .line 539
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/AudioState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    .line 541
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    goto/16 :goto_0

    .line 509
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_1

    .line 516
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_2

    .line 518
    :cond_7
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-ne v1, v7, :cond_9

    .line 520
    sget-object v1, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v1, :cond_8

    .line 521
    invoke-virtual {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    .line 526
    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_2

    .line 523
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_3

    .line 527
    :cond_9
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-eq v1, v5, :cond_a

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 530
    :cond_a
    sget-object v1, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    if-ne p5, v1, :cond_b

    .line 531
    invoke-virtual {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSecBluetoothForSec(Z)V

    .line 536
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_2

    .line 533
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    goto :goto_4
.end method

.method private turnOnBluetooth(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 577
    if-eq p1, v0, :cond_0

    .line 578
    const-string v0, "connecting bluetooth %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    const-string v0, "but ignore that for gear concept"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :cond_0
    return-void
.end method

.method private updateAudioForForegroundCall()V
    .locals 3

    .prologue
    .line 864
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 866
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->onAudioStateChanged(Lcom/android/server/telecom/Call;Landroid/telecom/AudioState;)V

    .line 868
    :cond_0
    return-void
.end method

.method private updateAudioStreamAndMode(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 636
    const-string v0, "updateAudioStreamAndMode, mIsRinging: %b, mIsTonePlaying: %b removeCase: %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->needPlaySecCallEndTone(Landroid/content/Context;)Z

    move-result v0

    .line 640
    if-eqz p1, :cond_0

    move v0, v1

    .line 643
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    invoke-direct {p0, v5, v4}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    .line 695
    :cond_1
    :goto_0
    return-void

    .line 646
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 647
    if-eqz v2, :cond_3

    .line 648
    const-string v0, "- Foreground call is exist"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioStream(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAudioMode(Lcom/android/server/telecom/Call;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    goto :goto_0

    .line 654
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v2, :cond_5

    .line 668
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 674
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->hasRingingForegroundCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_4
    const-string v0, "call is null, or voip is activated"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    invoke-direct {p0, v1, v1}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    goto :goto_0

    .line 682
    :cond_5
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->hasRingingForegroundCall()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string v0, "- abandonAudioFocus"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    const-string v0, "abandoning audio focus"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    goto :goto_0
.end method


# virtual methods
.method public final getBluetoothManager()Lcom/android/server/telecom/BluetoothManager;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    return-object v0
.end method

.method public final isBluetoothAudioOn()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    return v0
.end method

.method public final isBluetoothDeviceAvailable()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method public final isWiredHeadsetPluggedIn()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    return v0
.end method

.method public final mute(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v1, "mute, shouldMute: %b"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const-string v1, "ignoring mute for emergency call"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    if-eq v1, p1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    .line 237
    :cond_3
    const-string v1, "feature_multisim_dsda"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "force mute, shouldMute: %b for DSDA"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method final onBluetoothStateChange(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v1, 0x2

    .line 325
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v2

    .line 330
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    .line 331
    invoke-virtual {p1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p1, Lcom/android/server/telecom/BluetoothManager;->mBluetoothConnected:Z

    if-eqz v3, :cond_3

    :cond_1
    move v0, v1

    .line 351
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->route:I

    if-ne v3, v1, :cond_2

    .line 334
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-direct {p0, v4, v2}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    goto :goto_1

    .line 340
    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    .line 343
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    .line 346
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    goto :goto_1
.end method

.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mInCallToneMonitor:Lcom/android/server/telecom/InCallToneMonitor;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallToneMonitor;->stopCallEndTone()V

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mVTendToneStoped:Z

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    .line 87
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    .line 93
    :cond_1
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->playingSecCallEndTone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->resetAudioStateAfterDisconnect()V

    .line 100
    :cond_0
    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    .line 129
    return-void
.end method

.method public final onEpdgStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v0, "onEpdgStateChanged"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 391
    return-void
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    .line 156
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v0

    .line 157
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 158
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    if-eq v0, v2, :cond_0

    .line 160
    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onForegroundCallChanged -changed mAudioState.supportedRouteMask "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 164
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    .line 169
    return-void
.end method

.method public final onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->route:I

    .line 138
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothWatchSingleConnected()Z

    move-result v3

    .line 143
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 147
    const/4 v0, 0x2

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    .line 150
    return-void

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final onIsVoipAudioModeChanged$57920a58()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 174
    return-void
.end method

.method public final onModifiedCall()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    const-string v0, "onModifiedCall"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iput-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsModifyCall:Z

    .line 369
    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 371
    const-string v0, "common_volte_hk"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    goto :goto_0
.end method

.method public final onWiredHeadsetPluggedInChanged$25decb5(Z)V
    .locals 5

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x1

    .line 188
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->route:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 191
    const-string v0, "onWiredHeadsetPluggedInChanged : keep ROUTE_BLUETOOTH"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_1
    if-eqz p1, :cond_3

    .line 194
    const-string v0, "onWiredHeadsetPluggedInChanged1"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x4

    .line 213
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateRingbackToneVolume(Landroid/media/AudioManager;Z)V

    .line 215
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v2

    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz v2, :cond_5

    .line 203
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v0, v1

    goto :goto_1

    .line 208
    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDockOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1
.end method

.method public final resetAudioStateAfterDisconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const-string v0, "resetAudioStateAfterDisconnect..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string v0, "all calls removed, reseting system audio to default state"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-direct {p0, v4, v2}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    .line 109
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    .line 115
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, " a call disconnected,and only has RINGING call currently, reseting system audio to default state"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0, v4, v2}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    .line 113
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    goto :goto_0

    .line 116
    :cond_3
    const-string v0, "force_initial_audiostate"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const-string v0, "all calls removed, reseting system audio to default state - for sec"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, v4, v3}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    .line 120
    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    .line 122
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    goto :goto_1
.end method

.method public final setAudioRoute(I)V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    .line 251
    return-void
.end method

.method public final setAudioRoute(IZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const-string v0, "setAudioRoute has not focus"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-string v2, "setAudioRoute, route: %s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v2

    .line 266
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->supportedRouteMask:I

    or-int/2addr v3, v2

    if-nez v3, :cond_2

    .line 267
    const-string v3, "Asking to set to a route that is unsupported: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->route:I

    if-eq v3, v2, :cond_0

    .line 274
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    .line 277
    if-eqz p2, :cond_4

    .line 278
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    sget-object v3, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZIILcom/android/server/telecom/CallAudioManager$RouteRequester;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 274
    goto :goto_1

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0
.end method

.method final setIsRinging(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-eq v0, p1, :cond_0

    .line 289
    const-string v0, "setIsRinging %b -> %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    .line 291
    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method final setIsTonePlaying(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 303
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 305
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eq v0, p1, :cond_1

    .line 306
    const-string v0, "mIsTonePlaying %b -> %b."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    .line 308
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-nez v0, :cond_2

    .line 310
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mVTendToneStoped:Z

    if-ne v0, v3, :cond_0

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    .line 312
    iput-boolean v4, p0, Lcom/android/server/telecom/CallAudioManager;->mVTendToneStoped:Z

    .line 314
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode(Z)V

    goto :goto_0
.end method

.method public final turnOnSecBluetoothForSec(Z)V
    .locals 4

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 595
    if-eq p1, v0, :cond_0

    .line 596
    const-string v0, "connecting turnOnSecBluetoothForSec %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    if-eqz p1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->connectBluetoothAudio()V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0
.end method

.method public final turnOnSecBluetoothFromEx(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 610
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    const-string v0, "turnOnSecBluetoothFromEx(): bluetooth is available"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    .line 613
    if-eq p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-ne v0, v3, :cond_1

    .line 615
    invoke-virtual {p0, v4, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(IZ)V

    goto :goto_0

    .line 620
    :cond_2
    if-eqz p1, :cond_0

    .line 621
    const-string v0, "turnOnSecBluetoothFromEx(): bluetooth is unavailable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final turnOnSpeaker(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 548
    const-string v0, "turning speaker phone %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    if-eqz p1, :cond_0

    invoke-static {v3, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioEffect(ZZ)V

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 552
    if-nez p1, :cond_1

    invoke-static {v4, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setAudioEffect(ZZ)V

    .line 555
    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    const-string v0, "turnOnSpeaker... sendBroadcast intent"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.prod.phone.action.CHANGED_SPEAKER_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/TelecomApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->updateRingbackToneVolume(Landroid/media/AudioManager;)V

    .line 563
    return-void
.end method
