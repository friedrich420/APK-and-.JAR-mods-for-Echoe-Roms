.class public final Lcom/android/server/telecom/InCallController;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallController$InCallServiceConnection;
    }
.end annotation


# instance fields
.field private final mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mCallListener:Lcom/android/server/telecom/Call$Listener;

.field private final mContext:Landroid/content/Context;

.field private mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

.field private final mHandler:Landroid/os/Handler;

.field private final mInCallComponentName:Landroid/content/ComponentName;

.field private final mInCallServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telecom/IInCallService;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

.field private final mServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/telecom/InCallController$InCallServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 86
    new-instance v0, Lcom/android/server/telecom/InCallController$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$1;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    .line 155
    new-instance v0, Lcom/android/server/telecom/CallIdMapper;

    const-string v1, "InCall"

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallIdMapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    .line 728
    new-instance v0, Lcom/android/server/telecom/InCallController$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$2;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;

    .line 764
    new-instance v0, Lcom/android/server/telecom/InCallController$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$3;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 169
    iput-object p1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    .line 176
    new-instance v0, Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/secutils/SecInCallController;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    const-string v0, "onConnected to %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "activate_your_phone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isOtaSpNumber(Lcom/google/common/collect/ImmutableCollection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected - isOtaSpNumber : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/android/internal/telecom/IInCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/android/server/telecom/InCallAdapter;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v2, v3}, Lcom/android/server/telecom/InCallAdapter;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Adding %s calls to InCallService after onConnected: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    :try_start_1
    const-string v3, "addCall after binding: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to set the in-call adapter."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/InCallController;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_1

    :cond_3
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbindExceptWithSecInCallUI()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    const-string v0, "onDisconnected from %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "In-call UI %s disconnected."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->disconnectAllCalls()V

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "In-Call Service %s suddenly disconnected"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/InCallController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/telecom/InCallController;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/InCallController;)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bind()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/telecom/InCallController;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/InCallController;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;)V

    .line 699
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->setTelecomCallId(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 702
    :cond_0
    return-void
.end method

.method private bind()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 352
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.InCallService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 357
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 358
    if-eqz v6, :cond_0

    .line 359
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INCALL_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 362
    :goto_1
    const-string v3, "android.permission.CONTROL_INCALL_EXPERIENCE"

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 366
    :goto_2
    if-nez v0, :cond_3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCallService does not have BIND_INCALL_SERVICE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 359
    goto :goto_1

    :cond_2
    move v3, v2

    .line 362
    goto :goto_2

    .line 372
    :cond_3
    if-nez v3, :cond_4

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCall UI does not have CONTROL_INCALL_EXPERIENCE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    :cond_4
    new-instance v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;B)V

    .line 380
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v7, "Attempting to bind to InCall %s, is dupe? %b "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v8, v2

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {p0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 388
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.telecom.InCallService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 391
    iget-object v7, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v0, v1, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->bind()V

    .line 400
    :cond_6
    return-void
.end method

.method private bindExceptWithSecInCallUI()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 409
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.InCallService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v3, "bindExceptWithSecInCallUI start"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 415
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 416
    if-eqz v6, :cond_0

    .line 417
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INCALL_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 420
    :goto_1
    const-string v3, "android.permission.CONTROL_INCALL_EXPERIENCE"

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 424
    :goto_2
    if-nez v0, :cond_3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCallService does not have BIND_INCALL_SERVICE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 417
    goto :goto_1

    :cond_2
    move v3, v2

    .line 420
    goto :goto_2

    .line 430
    :cond_3
    if-nez v3, :cond_4

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCall UI does not have CONTROL_INCALL_EXPERIENCE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;B)V

    .line 440
    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v7, "Attempting to bind to InCall %s, is dupe? %b "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v8, v2

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {p0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 448
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.telecom.InCallService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 451
    iget-object v7, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v0, v1, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 458
    :cond_5
    const-string v0, "bindExceptWithSecInCallUI stop"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method private checkEmergencyCallCondition()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 724
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 725
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    return-void
.end method

.method private toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    .locals 26

    .prologue
    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v2

    .line 602
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->isAddCallCapable(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    or-int/lit8 v2, v2, 0x10

    .line 606
    :cond_0
    const-string v3, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    and-int/lit8 v2, v2, -0x41

    .line 609
    and-int/lit8 v2, v2, -0x11

    .line 610
    and-int/lit8 v2, v2, -0x3

    .line 614
    :cond_1
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 616
    and-int/lit8 v2, v2, -0x5

    move v3, v2

    .line 620
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .line 622
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    .line 623
    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    .line 624
    const/4 v2, 0x7

    .line 627
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isLocallyDisconnecting()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x7

    if-eq v2, v5, :cond_e

    .line 628
    const/16 v2, 0x9

    move v5, v2

    .line 631
    :goto_2
    const/16 v20, 0x0

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 633
    if-eqz v2, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v20

    .line 637
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v2

    .line 639
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 640
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 641
    const-wide v6, 0x7fffffffffffffffL

    .line 642
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    .line 643
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 644
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 646
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v10, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 620
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    move-wide v10, v6

    .line 650
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isRespondViaSmsCapable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 651
    or-int/lit8 v8, v3, 0x20

    .line 654
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v12

    .line 656
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v14

    .line 659
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    .line 660
    new-instance v24, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    .line 662
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_8

    .line 664
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 654
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 656
    :cond_a
    const/4 v14, 0x0

    goto :goto_6

    .line 668
    :cond_b
    new-instance v3, Landroid/telecom/ParcelableCall;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDualPhoneNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v18

    if-eqz p2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v19

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    invoke-direct/range {v3 .. v25}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V

    return-object v3

    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    :cond_d
    move v8, v3

    goto/16 :goto_4

    :cond_e
    move v5, v2

    goto/16 :goto_2

    :cond_f
    move v3, v2

    goto/16 :goto_0
.end method

.method private unbind()V
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 315
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 317
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "Unbinding from InCallService %s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 323
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->unbind()V

    .line 324
    return-void
.end method

.method private unbindExceptWithSecInCallUI()V
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 331
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 333
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    :cond_1
    const-string v1, "Unbinding from InCallService unbind"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 339
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 340
    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 343
    :cond_2
    return-void
.end method

.method private updateCall(Lcom/android/server/telecom/Call;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 564
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 566
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 567
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 568
    const-string v3, "reduce_waste_point"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkActiveHoldCallExist()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPreviousState()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPreviousState()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 572
    :cond_2
    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    .line 578
    const-string v3, "updateCall %s ==> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->updateCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0

    .line 585
    :cond_3
    const-string v0, "reduce_waste_point"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setPreviousState(I)V

    .line 588
    :cond_4
    return-void
.end method


# virtual methods
.method final bringToForeground(Z)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 301
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->bringToForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0

    .line 306
    :cond_0
    const-string v0, "Asking to bring unbound in-call UI to foreground."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_1
    return-void
.end method

.method public final doEarlyServiceBinding()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bind()V

    .line 710
    return-void
.end method

.method public final getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mSecInCallController:Lcom/android/server/telecom/secutils/SecInCallController;

    return-object v0
.end method

.method public final onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "Calling onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 256
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/telecom/IInCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 182
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkServiceState(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    .line 187
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->checkEmergencyCallCondition()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bind()V

    goto :goto_0

    .line 192
    :cond_2
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkServiceState(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    iput-object p1, p0, Lcom/android/server/telecom/InCallController;->mDelayedEmergencyCall:Lcom/android/server/telecom/Call;

    .line 196
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->checkEmergencyCallCondition()V

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, "onCallAdded: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 206
    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    .line 209
    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    :catch_0
    move-exception v0

    goto :goto_1

    .line 214
    :cond_4
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->bindExceptWithSecInCallUI()V

    goto :goto_0
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 223
    const-string v0, "onCallRemoved: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "keep_incallui_bind_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbindExceptWithSecInCallUI()V

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->removeCall(Lcom/android/server/telecom/Call;)V

    .line 234
    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_0
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    .line 239
    return-void
.end method

.method public final onChangeInContent(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangeInContent::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 270
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calling onChangeInContent of InCallService::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->onChangeInContent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public final onConnectionServiceChanged$382ed448(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    .line 247
    return-void
.end method

.method public final onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    .line 293
    const-string v0, "onIsConferencedChanged %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    .line 295
    return-void
.end method

.method final onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "Calling onPostDialWait, remaining = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/android/internal/telecom/IInCallService;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method
