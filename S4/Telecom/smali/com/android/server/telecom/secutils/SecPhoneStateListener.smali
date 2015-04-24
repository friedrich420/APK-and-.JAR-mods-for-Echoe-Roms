.class public final Lcom/android/server/telecom/secutils/SecPhoneStateListener;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "SecPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 36
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 37
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 41
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 43
    new-instance v1, Lcom/google/common/base/Equivalences;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/common/base/Equivalences;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

    .line 44
    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mPhoneState = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/common/base/Equivalences;->enableNotificationAlerts(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_2

    :cond_1
    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    invoke-direct {v0, v2}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    new-instance v0, Lcom/android/server/telecom/secutils/FileWriteThread;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FileWriteThread;->start()V

    .line 100
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallAdded state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    const-string v0, "onCallAdded : Call is in an state (%s), not broadcasting: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 92
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->onPhoneStateChanged()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallStateChanged newState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    packed-switch p3, :pswitch_data_0

    .line 71
    const-string v0, "Call is in an unknown state (%s), not broadcasting: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 56
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 75
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->onPhoneStateChanged()V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 60
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_1

    .line 64
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPrePhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 66
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p3, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecPhoneStateListener;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

    invoke-virtual {v0}, Lcom/google/common/base/Equivalences;->initialStatusBar()V

    goto :goto_1

    .line 51
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
