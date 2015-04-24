.class public Lcom/android/server/telecom/TelecomServiceImpl;
.super Lcom/android/internal/telecom/ITelecomService$Stub;
.source "TelecomServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;,
        Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private final mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

.field private final mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-class v0, Lcom/android/server/telecom/TelecomServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelecomServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;Lcom/android/server/telecom/CallsManager;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;-><init>()V

    .line 144
    new-instance v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;-><init>(Lcom/android/server/telecom/TelecomServiceImpl;B)V

    iput-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    .line 153
    iput-object p1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    .line 154
    iput-object p2, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    .line 155
    iput-object p3, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 156
    iput-object p4, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/TelecomServiceImpl;)Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 59
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x5
        0x3
        0x4
        0x6
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/server/telecom/TelecomServiceImpl;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    const-string v0, "acceptRingingCallInternal"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v3, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->answer(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/TelecomServiceImpl;)Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method private enforceModifyPermissionOrDefaultDialer()V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->isDefaultDialerCalling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 623
    :cond_0
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method private enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 604
    if-eqz v0, :cond_1

    .line 607
    const-string v0, "android.software.connectionservice"

    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "System does not support feature "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 611
    :cond_1
    return-void
.end method

.method private isDefaultDialerCalling()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_2

    .line 664
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    sget-object v2, Lcom/android/server/telecom/TelecomServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Skip default dialer check routine when TPhone."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    :goto_0
    return v0

    .line 668
    :cond_0
    iget-object v3, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.wms"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    sget-object v2, Lcom/android/server/telecom/TelecomServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Skip default dialer check routine when gear fit manager"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    sget-object v2, Lcom/android/server/telecom/TelecomServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "Could not get default dialer."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 681
    goto :goto_0
.end method

.method private sendRequest(I)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 700
    new-instance v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    invoke-direct {v0, v2}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;-><init>(B)V

    .line 701
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    iget-object v2, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->handleMessage(Landroid/os/Message;)V

    .line 702
    iget-object v0, v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    .line 716
    :goto_0
    return-object v0

    .line 704
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    move-result-object v1

    .line 707
    monitor-enter v1

    .line 708
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 710
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 713
    :catch_0
    move-exception v0

    goto :goto_1

    .line 715
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 716
    iget-object v0, v1, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    new-instance v0, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    invoke-direct {v0, v2}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;-><init>(B)V

    .line 690
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mMainThreadHandler:Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/android/server/telecom/TelecomServiceImpl$MainThreadHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 691
    return-object v0
.end method

.method private showInCallScreenTPhone()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    iget-object v2, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 440
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 442
    :try_start_0
    const-string v3, "showInCallScreen : TPhone"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    .line 444
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_0
    return v0

    .line 446
    :catch_0
    move-exception v2

    .line 447
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    :cond_0
    const-string v2, "showInCallScreen : relax mode init"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    move v0, v1

    .line 452
    goto :goto_0
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 406
    const-string v0, "acceptRingingCall"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "acceptRingingCall...sendBroadcast intent"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.prod.phone.intent.action.HOME_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/TelecomApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->iSInCallUITopActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    const-string v0, "acceptRingingCall - MSG_ACCEPT_RINGING_CALL"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    const-string v0, "acceptRingingCall -answerRingingCallInUI "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->answerRingingCallInUI()V

    goto :goto_0

    .line 422
    :cond_2
    const-string v0, "acceptRingingCall - mCallsManager or mCallsManager.getSecInCallController() is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 506
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 514
    if-eqz p2, :cond_0

    .line 515
    const-string v1, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 517
    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    const-string v1, "call.emergency.dial"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 526
    const-string v1, "is_incoming_call"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 527
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 528
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 529
    const-string v1, "Sending broadcast as user to CallReceiver- isIncoming: %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 532
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    :cond_2
    return-void
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 541
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/TelephonyUtil;->isPstnComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.NEW_UNKNOWN_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 550
    const-string v1, "is_unknown_call"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 557
    :goto_0
    return-void

    .line 554
    :cond_0
    const-string v0, "Null phoneAccountHandle or not initiated by Telephony. Ignoring request to add new unknown call."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public cancelMissedCallsNotification()V
    .locals 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforceModifyPermissionOrDefaultDialer()V

    .line 461
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    .line 462
    return-void
.end method

.method public clearAccounts(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 333
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->clearAccounts(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "clearAccounts %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    sget-object v2, Lcom/android/server/telecom/TelecomServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "mCallsManager: "

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 727
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/CallsManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 728
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 730
    :cond_0
    return-void
.end method

.method public endCall()Z
    .locals 1

    .prologue
    .line 397
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequest(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    const-string v1, "getAllPhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    throw v0
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "getAllPhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    throw v0
.end method

.method public getAllPhoneAccountsCount()I
    .locals 3

    .prologue
    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountsCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "getAllPhoneAccountsCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    throw v0
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v1, "getCallCapablePhoneAccounts"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    throw v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCurrentTtyMode()I
    .locals 1

    .prologue
    .line 497
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 498
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequest(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "getDefaultOutgoingPhoneAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    throw v0
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f080002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 4

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "getPhoneAccount %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    throw v0
.end method

.method public getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "getPhoneAccountsForPackage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    throw v0
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "getPhoneAccountsSupportingScheme"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    throw v0
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    const-string v1, "getSimCallManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    throw v0
.end method

.method public getSimCallManagers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getConnectionManagerPhoneAccounts()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v1, "getSimCallManagers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    throw v0
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "getUserSelectedOutgoingPhoneAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    throw v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforceModifyPermissionOrDefaultDialer()V

    .line 472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 477
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 480
    return v0

    .line 477
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 367
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    .line 371
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 380
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTtySupported()Z
    .locals 1

    .prologue
    .line 488
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequest(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 301
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    const-string v0, "com.android.server.telecom.permission.REGISTER_PROVIDER_OR_SUBSCRIPTION"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 307
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    const-string v0, "com.android.server.telecom.permission.REGISTER_CONNECTION_MANAGER"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "registerPhoneAccount %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    throw v0
.end method

.method public setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .prologue
    .line 278
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "setSimCallManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    throw v0
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .prologue
    .line 186
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "setUserSelectedOutgoingPhoneAccount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    throw v0
.end method

.method public showInCallScreen(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 432
    const-string v2, "acceptRingingCall"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->isDefaultDialerCalling()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v2}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomServiceImpl;->showInCallScreenTPhone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    const/4 v2, 0x2

    if-eqz p1, :cond_2

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    .line 436
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 435
    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 346
    const-string v0, "silenceRinger"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePermission(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v3, v4}, Lcom/android/server/telecom/TelecomServiceImpl;->sendRequestAsync(II)Lcom/android/server/telecom/TelecomServiceImpl$MainThreadRequest;

    .line 349
    return-void
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/TelecomServiceImpl;->enforcePhoneAccountModificationForPackage(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/server/telecom/TelecomServiceImpl;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/PhoneAccountRegistrar;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v1, "unregisterPhoneAccount %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    throw v0
.end method
