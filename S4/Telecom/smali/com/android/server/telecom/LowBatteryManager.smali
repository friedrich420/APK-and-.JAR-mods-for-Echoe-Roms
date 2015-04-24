.class public Lcom/android/server/telecom/LowBatteryManager;
.super Ljava/lang/Object;
.source "LowBatteryManager.java"


# static fields
.field private static final ENG:Z

.field private static sInstance:Lcom/android/server/telecom/LowBatteryManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mIsBatteryLow:Z

.field private mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field public mLowBatteryWarningLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/LowBatteryManager;->ENG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    .line 129
    new-instance v0, Lcom/android/server/telecom/LowBatteryManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/LowBatteryManager$1;-><init>(Lcom/android/server/telecom/LowBatteryManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryWarningLevel:I

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public static englog(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 186
    sget-boolean v0, Lcom/android/server/telecom/LowBatteryManager;->ENG:Z

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "LowBatteryManager"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/telecom/LowBatteryManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/server/telecom/LowBatteryManager;->sInstance:Lcom/android/server/telecom/LowBatteryManager;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 47
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-class v1, Lcom/android/server/telecom/LowBatteryManager;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/LowBatteryManager;->sInstance:Lcom/android/server/telecom/LowBatteryManager;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/android/server/telecom/LowBatteryManager;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/LowBatteryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/LowBatteryManager;->sInstance:Lcom/android/server/telecom/LowBatteryManager;

    .line 56
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/telecom/LowBatteryManager;->sInstance:Lcom/android/server/telecom/LowBatteryManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/LowBatteryManager;->englog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    const-string v0, "LowBatteryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value of message"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 93
    const/16 v1, 0x51

    iget-object v2, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 94
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method

.method public static supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    sget-object v0, Lcom/android/server/telecom/LowBatteryManager;->sInstance:Lcom/android/server/telecom/LowBatteryManager;

    if-nez v0, :cond_0

    move v0, v1

    .line 181
    :goto_0
    const-string v3, "LowBatteryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "supportLowBatteryManager = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return v0

    .line 172
    :cond_0
    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 176
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final disconnectForegroundCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 100
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LowBatteryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting Active Call as battery is low :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryWarningLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LowBatteryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disconnecting Active Call as battery is low :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryWarningLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p0, v4}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    goto :goto_0
.end method

.method public final isLowBatt()Z
    .locals 1

    .prologue
    .line 70
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    goto :goto_0
.end method

.method public final performBatteryLowProcess(Z)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "LowBatteryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performBatteryLowProcess - checkCallIncoming ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/LowBatteryManager;->showToast(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/LowBatteryManager;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method
