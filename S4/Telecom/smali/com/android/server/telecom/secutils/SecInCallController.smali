.class public final Lcom/android/server/telecom/secutils/SecInCallController;
.super Ljava/lang/Object;
.source "SecInCallController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private isBound:Z

.field mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    .line 28
    return-void
.end method


# virtual methods
.method public final answerRingingCallInUI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecInCallService;->answerRingingCallInUI()V

    .line 84
    const-string v0, "SecInCallController"

    const-string v1, "SecInCallController. - answerRingCallInUI"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v1, "SecInCallController. answerRingCallInUI exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final bind()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 50
    const-string v0, "SecInCallController"

    const-string v1, "bind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.incallui.SEC_IN_CALL_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.incallui.SecInCallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    .line 55
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v4, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 57
    iput-boolean v4, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    .line 58
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {p2}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecInCallService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    new-instance v1, Lcom/android/server/telecom/secutils/SecInCallAdapter;

    invoke-direct {v1}, Lcom/android/server/telecom/secutils/SecInCallAdapter;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/ISecInCallService;->setSecInCallAdapter(Lcom/android/services/telephony/common/ISecInCallAdapter;)V

    .line 37
    const-string v0, "SecInCallController"

    const-string v1, "onServiceConnected. - setSecInCallAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "Failed to set the sec-in-call adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    .line 47
    return-void
.end method

.method public final unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "SecInCallController"

    const-string v1, "unBind()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/TelecomApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/SecInCallController;->isBound:Z

    .line 66
    :cond_0
    return-void
.end method
