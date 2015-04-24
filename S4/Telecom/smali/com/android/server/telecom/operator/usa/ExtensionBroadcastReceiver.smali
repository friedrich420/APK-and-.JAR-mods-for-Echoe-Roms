.class public final Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExtensionBroadcastReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;-><init>(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    if-eqz p1, :cond_2

    const-string v0, "HDVOICE_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HDVOICE_STATUS"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hdVoiceStatus : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateHdvoiceCall(Lcom/android/server/telecom/Call;Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "Action received: %s."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string v1, "android.intent.action.HDVOICE_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    :cond_0
    return-void
.end method
