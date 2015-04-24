.class final Lcom/android/server/telecom/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTtyMode:I

.field private mPreferredTtyMode:I

.field private final mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/server/telecom/TtyManager;B)V

    iput-object v0, p0, Lcom/android/server/telecom/TtyManager;->mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    .line 36
    iput v2, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    .line 37
    iput v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    .line 40
    iput-object p1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    .line 42
    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/TtyManager;->mReceiver:Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TtyManager;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/telecom/TtyManager;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TtyManager;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    return-void
.end method

.method private updateAudioTtyMode()V
    .locals 4

    .prologue
    .line 99
    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    packed-switch v0, :pswitch_data_0

    .line 111
    const-string v0, "tty_off"

    move-object v1, v0

    .line 114
    :goto_0
    const-string v0, "updateAudioTtyMode, %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tty_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 118
    return-void

    .line 101
    :pswitch_0
    const-string v0, "tty_full"

    move-object v1, v0

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 105
    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 108
    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateCurrentTtyMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    .line 85
    :goto_0
    const-string v2, "updateCurrentTtyMode, %d -> %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget v1, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    if-eq v1, v0, :cond_1

    .line 88
    iput v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 93
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateAudioTtyMode()V

    .line 95
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final getCurrentTtyMode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    return v0
.end method

.method final isTtySupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tty_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 59
    :goto_0
    const-string v3, "isTtySupported: %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public final onWiredHeadsetPluggedInChanged$25decb5(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v0, "onWiredHeadsetPluggedInChanged"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const-string v0, "tty_to_default_wired_headset_plugged_out"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    if-nez p1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput v4, p0, Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I

    :cond_0
    const-string v0, "updateCurrentTtyModeToDefault, %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    iget v2, p0, Lcom/android/server/telecom/TtyManager;->mCurrentTtyMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateAudioTtyMode()V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V

    goto :goto_0
.end method
