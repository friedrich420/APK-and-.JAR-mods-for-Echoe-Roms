.class public final Lcom/android/server/telecom/BluetoothVoIPService;
.super Landroid/app/Service;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;,
        Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;
    }
.end annotation


# static fields
.field public static backgroundVoIPCall:I

.field public static foregroundVoIPCall:I

.field public static ringingVoIPCall:I


# instance fields
.field private mBackgroundVoIPCallState:I

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;

.field private mForegroundVoIPCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mNumVoIPActive:I

.field private mNumVoIPHeld:I

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingVoIPCallState:I

.field private mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

.field private voipInterfaceService:Landroid/os/IVoIPInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 120
    sput v0, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    .line 121
    sput v0, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    .line 122
    sput v0, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    .line 117
    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    .line 118
    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBackgroundVoIPCallState:I

    .line 126
    iput v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    .line 127
    iput v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    .line 138
    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothVoIPService$1;-><init>(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    .line 258
    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothVoIPService$2;-><init>(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 663
    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothVoIPService$3;-><init>(Lcom/android/server/telecom/BluetoothVoIPService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    .line 272
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Constructor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/os/IVoIPInterface;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/telecom/BluetoothVoIPService;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/BluetoothVoIPService;I)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothVoIPService;->processChld(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/BluetoothVoIPService;)Landroid/telecom/PhoneAccount;
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/TelecomApp;

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "tel"

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/BluetoothVoIPService;Z)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->existValidCall()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BluetoothVoIPService"

    const-string v1, "There is no vaild VoIP Call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "BluetoothVoIPService"

    const-string v1, "connect watch device"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleListCurrentCalls exeption :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Try to handle List Current Calls"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_0

    const-string v0, "BluetoothVoIPService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Try to get call info of index("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mBluetoothPhoneService.mLastIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;

    sget v2, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0, v8}, Landroid/os/IVoIPInterface;->getCallSessionInfo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getIndexForClcc()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;

    sget v1, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getDirectionForClcc()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getStatusForClcc()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->convertToCallState(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getMptyForClcc()Z

    move-result v5

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getNumberForClcc()Ljava/lang/String;

    move-result-object v6

    const-string v0, "sending clcc for call %d, %d, %d, %b, %s, %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    const/4 v7, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v7

    const/4 v7, 0x4

    aput-object v6, v4, v7

    const/4 v7, 0x5

    const/16 v10, 0x81

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    const/16 v7, 0x81

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/BluetoothVoIPService;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->updateHeadsetWithVoIPState$1385ff()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->callStarted()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/telecom/BluetoothVoIPService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private declared-synchronized callStarted()V
    .locals 3

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothVoIPService"

    const-string v1, "BT - callStarted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    monitor-exit p0

    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static convertToCallState(I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x6

    .line 600
    packed-switch p0, :pswitch_data_0

    .line 627
    :goto_0
    :pswitch_0
    const-string v2, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "convertToCallState : index("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    return v0

    :pswitch_1
    move v0, v1

    .line 606
    goto :goto_0

    .line 608
    :pswitch_2
    const/4 v0, 0x1

    .line 609
    goto :goto_0

    .line 611
    :pswitch_3
    const/4 v0, 0x2

    .line 612
    goto :goto_0

    .line 614
    :pswitch_4
    const/4 v0, 0x3

    .line 615
    goto :goto_0

    .line 617
    :pswitch_5
    const/4 v0, 0x4

    .line 618
    goto :goto_0

    .line 620
    :pswitch_6
    const/4 v0, 0x5

    .line 621
    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 863
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_3

    .line 864
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 865
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    .line 866
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 867
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 868
    iget-object v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    .line 869
    const-string v5, "BluetoothVoIPService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isConnectedBTWithWatch type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    const-string v5, "WA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 871
    const/4 v2, 0x1

    .line 877
    :goto_0
    const-string v4, "BluetoothVoIPService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getBTWatchDevice result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    if-nez v2, :cond_1

    .line 881
    :goto_1
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    move v2, v3

    goto :goto_0
.end method

.method private processChld(I)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 313
    const-string v1, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VoIP CHLD Value is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 317
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 320
    if-nez p1, :cond_5

    .line 321
    const-string v5, "BluetoothVoIPService"

    const-string v6, "Process AT+CHLD=0 for VoIP"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_4

    .line 324
    sget v1, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    if-eq v1, v8, :cond_0

    sget v1, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v1, v2, :cond_10

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    move v0, v1

    .line 411
    :cond_3
    :goto_1
    return v0

    .line 331
    :catch_0
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    const-string v2, "RemoteException"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    goto :goto_0

    .line 335
    :cond_4
    sget v5, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v5, v2, :cond_f

    if-eqz v3, :cond_f

    .line 336
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v1, v2

    .line 340
    :goto_2
    sget v3, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v3, v2, :cond_2

    if-eqz v4, :cond_2

    .line 342
    :try_start_1
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    if-eqz v2, :cond_2

    .line 343
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 347
    :catch_1
    move-exception v2

    const-string v2, "BluetoothVoIPService"

    const-string v3, "RemoteException"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_5
    if-ne p1, v2, :cond_8

    .line 352
    const-string v5, "BluetoothVoIPService"

    const-string v6, "Process AT+CHLD=1 for VoIP"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_6

    .line 355
    sget v1, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    if-nez v1, :cond_3

    .line 357
    :try_start_2
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_1

    .line 362
    :catch_2
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    const-string v2, "RemoteException"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 367
    :cond_6
    sget v5, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v5, v2, :cond_7

    if-eqz v3, :cond_7

    .line 369
    :try_start_3
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    if-eqz v2, :cond_3

    .line 370
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v2

    if-nez v2, :cond_3

    .line 371
    invoke-virtual {v1, v3}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto/16 :goto_1

    .line 375
    :catch_3
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    const-string v2, "RemoteException"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 379
    :cond_7
    sget v3, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v3, v2, :cond_3

    if-eqz v4, :cond_3

    .line 380
    invoke-virtual {v1, v4}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v2

    .line 382
    goto/16 :goto_1

    .line 385
    :cond_8
    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 386
    const-string v3, "BluetoothVoIPService"

    const-string v4, "Process AT+CHLD=2 for VoIP"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_c

    .line 390
    :try_start_4
    sget v1, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    if-ne v1, v8, :cond_e

    .line 391
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    move-result v1

    .line 393
    :goto_3
    sget v3, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    if-nez v3, :cond_a

    .line 394
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->holdVoIPCall()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_9
    move v0, v2

    goto/16 :goto_1

    .line 396
    :cond_a
    sget v1, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v1, v2, :cond_3

    .line 397
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->resumeVoIPCall()Z

    move-result v1

    .line 398
    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->resumeVoIPCall()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    if-eqz v1, :cond_3

    :cond_b
    move v0, v2

    goto/16 :goto_1

    .line 400
    :catch_4
    move-exception v1

    const-string v1, "BluetoothVoIPService"

    const-string v2, "RemoteException"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 402
    :cond_c
    const-string v1, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CS Call and VoIP Call cannot swap or voipInterfaceService is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 406
    :cond_d
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 407
    const-string v1, "BluetoothVoIPService"

    const-string v2, "Process AT+CHLD=3 for VoIP"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    const-string v1, "BluetoothVoIPService"

    const-string v2, "VoIP Call doesn\'t support adding a held call"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    move v1, v0

    goto :goto_3

    :cond_f
    move v1, v0

    goto/16 :goto_2

    :cond_10
    move v1, v0

    goto/16 :goto_0
.end method

.method private sendSynchronousRequest(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v1, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;-><init>(I)V

    .line 424
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    monitor-enter v1

    .line 426
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 428
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    goto :goto_0

    .line 433
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothVoIPService$MainThreadRequest;->result:Ljava/lang/Object;

    .line 439
    :goto_1
    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 439
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    :cond_0
    return-void
.end method

.method private updateHeadsetWithVoIPState$1385ff()V
    .locals 13

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 507
    :try_start_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getActiveFgCallState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 508
    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getFirstActiveBgCallState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 509
    :try_start_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->getFirstActiveRingingCallState()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    .line 514
    :goto_0
    const-string v5, "BluetoothVoIPService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "changeVoIPStateToCallState: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v8, 0x5

    if-eq v4, v8, :cond_0

    if-ne v4, v7, :cond_2

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 515
    :goto_1
    invoke-static {v3}, Lcom/android/server/telecom/BluetoothVoIPService;->convertToCallState(I)I

    move-result v5

    sput v5, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    .line 516
    invoke-static {v2}, Lcom/android/server/telecom/BluetoothVoIPService;->convertToCallState(I)I

    move-result v2

    sput v2, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    .line 517
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->convertToCallState(I)I

    move-result v0

    sput v0, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    .line 519
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v2

    .line 522
    const-string v0, "BluetoothVoIPService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "updateHeadsetWithVoIPState() getCallState : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const-string v0, "BluetoothVoIPService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "mFVoIPCall : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mBVoIPCall : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v8, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mRVoIPCall : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v8, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v5, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    const-string v0, "BluetoothVoIPService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "newVoIPState : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    .line 528
    iget v5, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    .line 529
    iget v8, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    .line 530
    iget v9, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    .line 531
    iget-object v10, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    .line 533
    sget v0, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    .line 534
    sget v0, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    .line 535
    sget v0, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBackgroundVoIPCallState:I

    .line 538
    const/16 v0, 0x8

    if-ne v3, v0, :cond_3

    .line 539
    const-string v0, "BluetoothVoIPService"

    const-string v2, "handlePreciseCallStateChange. Call disconnecting, wait before update"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    :cond_1
    :goto_2
    return-void

    .line 510
    :catch_0
    move-exception v0

    move-object v4, v0

    move v2, v1

    move v3, v1

    move v0, v1

    .line 511
    :goto_3
    const-string v5, "BluetoothVoIPService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateHeadsetWithVoIPState exeption : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v8}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    goto/16 :goto_0

    .line 514
    :cond_2
    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto/16 :goto_1

    .line 542
    :cond_3
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    if-nez v0, :cond_5

    move v0, v6

    :goto_4
    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    .line 543
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBackgroundVoIPCallState:I

    if-ne v0, v6, :cond_6

    move v0, v6

    :goto_5
    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    .line 546
    const-string v0, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "mNumVoIPActive : "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    const-string v0, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mNumVoIPHeld : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    const-string v0, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mRingingVoIPCallState : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    const-string v0, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mForegroundVoIPCallState : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    const-string v0, "BluetoothVoIPService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mVoIPRingingNumber : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    if-eq v0, v9, :cond_7

    .line 553
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    .line 558
    :goto_6
    iget v3, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    if-eq v3, v8, :cond_4

    .line 559
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mRingingVoIPCallState:I

    .line 562
    :cond_4
    iget v3, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    if-lez v3, :cond_b

    move v3, v7

    .line 566
    :goto_7
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 567
    const-string v0, "BluetoothVoIPService"

    const-string v4, "VoIP Call State Changed"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 568
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    if-ne v0, v6, :cond_8

    if-nez v2, :cond_8

    .line 569
    const-string v0, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mNumVoIPActive : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNumVoIPHeld: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mUpdateVoIPCallState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 573
    if-nez v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->access$1000(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I
    invoke-static {v5}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->access$1100(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 542
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 543
    goto/16 :goto_5

    .line 554
    :cond_7
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    .line 555
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mForegroundVoIPCallState:I

    goto :goto_6

    .line 578
    :cond_8
    sget v0, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v0, v6, :cond_9

    const/4 v0, 0x4

    if-ne v2, v0, :cond_9

    .line 579
    const-string v0, "BluetoothVoIPService"

    const-string v2, "CS Call is Ringing, VoIP Call is ON_HOLD"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 581
    :cond_9
    if-eqz v2, :cond_a

    .line 582
    const-string v0, "BluetoothVoIPService"

    const-string v2, "CS Call is not Idle"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 586
    :cond_a
    const-string v0, "BluetoothVoIPService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mNumVoIPActive : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mNumVoIPHeld: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mUpdateVoIPCallState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->getBTWatchDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 590
    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPActive:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mNumVoIPHeld:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->access$1000(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I
    invoke-static {v5}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->access$1100(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_2

    .line 510
    :catch_1
    move-exception v0

    move v2, v1

    move v3, v4

    move-object v4, v0

    move v0, v1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v12, v0

    move v0, v2

    move v2, v3

    move v3, v4

    move-object v4, v12

    goto/16 :goto_3

    :cond_b
    move v3, v0

    goto/16 :goto_7

    :cond_c
    move v0, v7

    goto/16 :goto_6

    :cond_d
    move-object v4, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 283
    const-string v0, "BluetoothVoIPService"

    const-string v1, "Binding service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    const-string v0, "BluetoothVoIPService"

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 292
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 293
    const-string v0, "BluetoothVoIPService"

    const-string v1, "BluetoothVoIPService shutting down, no BT Adapter found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 298
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->voipInterfaceService:Landroid/os/IVoIPInterface;

    .line 299
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {v0}, Lcom/android/server/telecom/BluetoothPhoneService;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;

    .line 301
    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    const-string v1, ""

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;-><init>(Lcom/android/server/telecom/BluetoothVoIPService;Ljava/lang/String;IB)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService;->mVoIPRingingNumber:Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;

    .line 303
    invoke-direct {p0}, Lcom/android/server/telecom/BluetoothVoIPService;->updateHeadsetWithVoIPState$1385ff()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 308
    const-string v0, "BluetoothVoIPService"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 310
    return-void
.end method
