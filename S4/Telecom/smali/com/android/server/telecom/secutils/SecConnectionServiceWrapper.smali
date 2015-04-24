.class public final Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.super Ljava/lang/Object;
.source "SecConnectionServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;
    }
.end annotation


# instance fields
.field private mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mHandler:Landroid/os/Handler;

.field private mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

.field private final mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

.field private mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

.field private statusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallIdMapper;)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;B)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    .line 54
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->statusBarManager:Landroid/app/StatusBarManager;

    .line 55
    new-instance v0, Lcom/google/common/base/Equivalences;

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->statusBarManager:Landroid/app/StatusBarManager;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Equivalences;-><init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

    .line 57
    new-instance v0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 156
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 38
    const-string v0, "SecConnectionServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onModifyCall : isIncoming : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " callType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p4, :cond_c

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_9

    if-nez v0, :cond_1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p3, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f080082

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez p3, :cond_8

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/services/telephony/common/ISecInCallService;->onModifyCall(ZILjava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v2, "onServiceConnected. - setSecInCallAdapter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Failed to set the sec-in-call adapter."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f080083

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    :goto_4
    invoke-virtual {p0, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const v0, 0x7f080084

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_4

    :cond_8
    if-ne p3, v5, :cond_5

    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    goto :goto_3

    :cond_9
    if-lez v2, :cond_a

    invoke-static {p4, p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->handleModifyCallException(Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    if-nez p3, :cond_5

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080085

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    move v2, v3

    goto/16 :goto_0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400$14a35d76(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/google/common/base/Equivalences;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mStatusBarHelper$6de9f2d8:Lcom/google/common/base/Equivalences;

    return-object v0
.end method

.method private static getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final answerRingingCallInUI()V
    .locals 1

    .prologue
    .line 466
    invoke-static {}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->answerRingingCallInUI()V

    .line 470
    :cond_0
    return-void
.end method

.method public final bind()V
    .locals 4

    .prologue
    .line 343
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "bind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.services.utils.SEC_CONNECTION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.services.utils.SecConnectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    .line 350
    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 353
    :cond_0
    return-void
.end method

.method public final getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 548
    :cond_0
    :goto_0
    return-object p1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 560
    :cond_0
    :goto_0
    return-object p1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final getSilence()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 529
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v1, :cond_0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionService;->getSilence()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    const-string v2, "Failed to getSilence"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onPostDialPause(Ljava/lang/String;CZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 473
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onPostDialPause : "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-static {}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v1

    .line 475
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_1

    .line 477
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->stopDtmfTone(Lcom/android/server/telecom/Call;)V

    .line 478
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 480
    iget-object v3, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v3, v0, p1}, Lcom/android/services/telephony/common/ISecInCallService;->onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v3, "onPostDialPause. - setSecInCallAdapter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    invoke-static {v2, p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->startDtmfTone(Lcom/android/server/telecom/Call;C)V

    .line 484
    :cond_1
    return-void

    .line 480
    :catch_0
    move-exception v0

    const-string v3, "Failed to set the sec-in-call adapter."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onPostDialPauseComplete$505d15a2(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 487
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onPostDialPauseComplete : "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    invoke-static {}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v1

    .line 489
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 490
    if-eqz v2, :cond_1

    .line 491
    if-eqz v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v3, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, v1, Lcom/android/server/telecom/secutils/SecInCallController;->mSecInCallService:Lcom/android/services/telephony/common/ISecInCallService;

    invoke-interface {v3, v0, p1}, Lcom/android/services/telephony/common/ISecInCallService;->onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecInCallController"

    const-string v3, "onPostDialPauseComplete. - setSecInCallAdapter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->stopDtmfTone(Lcom/android/server/telecom/Call;)V

    .line 497
    :cond_1
    return-void

    .line 493
    :catch_0
    move-exception v0

    const-string v3, "Failed to set the sec-in-call adapter."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-static {p2}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/ISecConnectionService;->setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V

    .line 330
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onServiceConnected. - setSecConnectionServiceAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    const-string v1, "Failed to set the sec-connection-service adapter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    .line 340
    return-void
.end method

.method public final requestModifyCall(I)V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 442
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 443
    const v0, 0x7f080082

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 445
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestModifyCall(I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestModifyCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-string v1, "Failed to requestModifyCall"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final requestTPhoneRingtoneUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->requestTPhoneRingtoneUri()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    const-string v1, "Failed to requestTPhoneRingtoneUri"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestTPhoneStart(I)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestTPhoneStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v1, "Failed to requestTPhoneStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final requestTransfer(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->transfer(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v1, "Failed to requestTransfer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final respondModifyCall(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionService;->respondModifyCall(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    const-string v1, "Failed to respondModifyCall"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final sendEmptyFlash()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->sendEmptyFlash()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final setAudioEffect(ZZ)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionService;->setAudioEffect(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "unBind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/TelecomApp;->unbindService(Landroid/content/ServiceConnection;)V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    .line 361
    :cond_0
    return-void
.end method
