.class public final Lcom/android/server/telecom/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;
    }
.end annotation


# static fields
.field public static mLastIndex:I


# instance fields
.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothCallState:I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

.field private mClccIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/telecom/Call;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetUpdatedRecently:Z

.field private mNumActiveCalls:I

.field private mNumHeldCalls:I

.field private mOldHeldCall:Lcom/android/server/telecom/Call;

.field private mOtherNumHeldCalls:I

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingAddress:Ljava/lang/String;

.field private mRingingAddressType:I

.field private mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 638
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    .line 117
    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    .line 118
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    .line 119
    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    .line 120
    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    .line 121
    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    .line 122
    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    .line 128
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$1;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    .line 253
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$2;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$3;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    .line 599
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$4;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 615
    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$5;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$5;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    .line 636
    iput-boolean v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    .line 639
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Constructor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 2

    .prologue
    .line 63
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothHeadset;->updateCallState(III)V

    :cond_0
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/telecom/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/BluetoothPhoneService;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/BluetoothPhoneService;Z)Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/BluetoothPhoneService;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/BluetoothPhoneService;I)Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    const-string v6, "BluetoothPhoneService"

    const-string v7, "Active: %s\nBluetoothPhoneService: Ringing: %s\nBluetoothPhoneService: Held: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v0

    aput-object v4, v8, v1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "CHLD Value is : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v11}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v6

    const/4 v7, 0x4

    if-le p1, v7, :cond_2

    const/16 v7, 0xa

    if-ge p1, v7, :cond_1

    const-string v1, "BluetoothPhoneService"

    const-string v2, "Invlaid CHLD"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int/lit8 v7, p1, 0xa

    div-int/lit8 p1, p1, 0xa

    if-ne v6, v9, :cond_3

    const-string v6, "BluetoothPhoneService"

    const-string v7, "CDMA Network can\'t control ECC"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_6

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4, v0, v11}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->processChldIdx(II)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    if-ne p1, v1, :cond_c

    if-eqz v3, :cond_9

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    if-eqz v4, :cond_7

    invoke-direct {p0, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v9, :cond_8

    invoke-virtual {v2, v4}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    :cond_7
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    :cond_a
    :goto_2
    move v0, v1

    goto :goto_0

    :cond_b
    if-eqz v5, :cond_a

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    :cond_c
    if-ne p1, v9, :cond_10

    if-eqz v4, :cond_d

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    move v0, v1

    goto :goto_0

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_e
    if-eqz v3, :cond_f

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_f
    move v0, v1

    goto :goto_0

    :cond_10
    if-ne p1, v10, :cond_0

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {v3, v0}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getApplication()Landroid/app/Application;

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

.method static synthetic access$900(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V

    return-void
.end method

.method private static convertCallState(IZ)I
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 1272
    packed-switch p0, :pswitch_data_0

    .line 1303
    :goto_0
    :pswitch_0
    return v0

    .line 1281
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1291
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1294
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1297
    :pswitch_4
    if-eqz p1, :cond_0

    .line 1298
    const/4 v0, 0x4

    goto :goto_0

    .line 1300
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 1272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1343
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1344
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentCallPhoneType, Defalut Phonetype : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    .line 1347
    if-eqz p1, :cond_1

    .line 1348
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    .line 1353
    :cond_0
    :goto_0
    const-string v1, "BluetoothPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentCallPhoneType, Current Phonetype : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    return v0

    .line 1349
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1350
    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    goto :goto_0
.end method

.method private getIndexForCall(Lcom/android/server/telecom/Call;)I
    .locals 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1024
    :goto_0
    return v0

    .line 1017
    :cond_0
    const/4 v0, 0x1

    .line 1018
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized processChldIdx(II)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 804
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Process CHLD Idx, Chld :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " idx :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    .line 807
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    .line 808
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    .line 813
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 815
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-nez v3, :cond_0

    .line 816
    if-ne v6, v0, :cond_1

    move v3, v2

    .line 817
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    invoke-static {v8, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->convertCallState(IZ)I

    move-result v3

    if-eq v3, v9, :cond_0

    .line 818
    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getIndexForCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne p2, v3, :cond_0

    move-object v4, v0

    .line 820
    goto :goto_0

    :cond_1
    move v3, v1

    .line 816
    goto :goto_1

    .line 826
    :cond_2
    if-nez v4, :cond_3

    .line 827
    const-string v0, "BluetoothPhoneService"

    const-string v2, "Wrong idx value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 876
    :goto_2
    monitor-exit p0

    return v0

    .line 830
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 833
    :goto_3
    if-ne p1, v2, :cond_5

    .line 834
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Trying to hangup "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    invoke-virtual {v5, v4}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v2

    .line 836
    goto :goto_2

    :cond_4
    move v0, v1

    .line 830
    goto :goto_3

    .line 837
    :cond_5
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b

    .line 838
    const-string v1, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Hold all Calls except, idx : "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v3, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 841
    :cond_6
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Idx call is waiting or held call object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 842
    goto :goto_2

    .line 845
    :cond_7
    const-string v1, "BluetoothPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "foregroundCall: %s / isConference: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v1, v3, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    .line 847
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Heldcall Num : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v0

    if-lez v0, :cond_9

    .line 849
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Merging calls"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    invoke-virtual {v6}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 857
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {v6, v0}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    .line 860
    :cond_8
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Separate the Call : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->splitFromConference()V

    move v0, v2

    .line 862
    goto/16 :goto_2

    .line 864
    :cond_9
    const-string v0, "BluetoothPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Separate the Call : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->splitFromConference()V

    move v0, v2

    .line 866
    goto/16 :goto_2

    .line 870
    :cond_a
    const-string v0, "BluetoothPhoneService"

    const-string v1, "ForegroundCall is null or idx call is not conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 871
    goto/16 :goto_2

    .line 875
    :cond_b
    const-string v0, "BluetoothPhoneService"

    const-string v2, "not supported ECC chld"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 876
    goto/16 :goto_2

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendListOfCalls(Z)V
    .locals 12

    .prologue
    .line 911
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    .line 914
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    .line 915
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 917
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->convertCallState(IZ)I

    move-result v3

    const/4 v1, 0x6

    if-eq v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->getIndexForCall(Lcom/android/server/telecom/Call;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_6

    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_7

    const/4 v7, -0x1

    :goto_6
    if-eqz p1, :cond_1

    const-string v0, "BluetoothPhoneService"

    const-string v4, "sending clcc for call %d, %d, %d, %b, %s, %d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v6}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v4, v9}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    add-int/lit8 v0, v1, 0x1

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 921
    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    .line 922
    :cond_9
    return-void
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
    .line 890
    new-instance v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;-><init>(I)V

    .line 891
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 892
    monitor-enter v1

    .line 893
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 895
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    goto :goto_0

    .line 900
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    .line 906
    :goto_1
    return-object v0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 906
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 643
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 646
    :cond_0
    return-void
.end method

.method private updateHeadsetWithCallState(Z)V
    .locals 13

    .prologue
    .line 1036
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v8

    .line 1040
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1041
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1042
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 1044
    const/4 v0, -0x1

    .line 1045
    const-string v4, "feature_multisim_dsda"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 1047
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState! mOtherNumHeldCalls==1 phoneId = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOtherNumHeldCalls:I

    .line 1049
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v0

    .line 1053
    const-string v4, "BluetoothPhoneService"

    const-string v5, "updateHeadsetWithCallState! phoneId = %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 1055
    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState!  activeCall,ringingCall,heldCall == null!!  phoneId = %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1057
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1058
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v1

    .line 1062
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getDialingCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    const/4 v4, 0x6

    if-eqz v5, :cond_3

    const/4 v4, 0x4

    move v7, v4

    .line 1064
    :goto_1
    const/4 v5, 0x0

    .line 1065
    const/16 v4, 0x80

    .line 1066
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 1067
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1068
    if-eqz v5, :cond_18

    .line 1069
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    move-object v2, v5

    .line 1072
    :goto_2
    if-nez v2, :cond_17

    .line 1073
    const-string v2, ""

    move-object v5, v2

    .line 1076
    :goto_3
    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 1077
    :goto_4
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v4

    .line 1079
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1080
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Do not play the BluetoothHeadset ringtone when TPhone RelaxMode."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1062
    :cond_3
    if-eqz v6, :cond_1a

    const/4 v4, 0x3

    move v7, v4

    goto :goto_1

    .line 1076
    :cond_4
    const/4 v2, 0x1

    goto :goto_4

    .line 1084
    :cond_5
    const-string v9, "feature_multisim_dsda"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1085
    if-nez v2, :cond_16

    if-nez v4, :cond_16

    .line 1086
    const-string v2, "BluetoothPhoneService"

    const-string v4, "updateHeadsetWithCallState! numActiveCalls,numHeldCalls == 0"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v4, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    if-nez v0, :cond_9

    .line 1088
    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState! change phoneId to 1 %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1090
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    .line 1091
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1098
    :goto_5
    if-nez v3, :cond_a

    const/4 v0, 0x0

    .line 1099
    :goto_6
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v1

    move v12, v1

    move-object v1, v2

    move v2, v0

    move v0, v12

    .line 1129
    :goto_7
    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    if-ne v2, v3, :cond_6

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    if-ne v0, v3, :cond_6

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-ne v7, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    if-ne v6, v3, :cond_6

    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    if-ne v1, v3, :cond_6

    if-eqz p1, :cond_0

    .line 1138
    :cond_6
    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    sget v4, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    .line 1139
    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    sget v9, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    .line 1141
    const/4 v3, 0x6

    if-ne v4, v3, :cond_7

    const/4 v3, 0x6

    if-eq v9, v3, :cond_12

    .line 1143
    :cond_7
    const-string v3, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "foregroundVoIPCall : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", backgroundVoIPCall : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1146
    const/4 v3, 0x0

    .line 1147
    invoke-virtual {v8}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v8

    .line 1148
    if-eqz v8, :cond_8

    .line 1149
    invoke-virtual {v8}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    .line 1151
    :cond_8
    const-string v8, "BluetoothPhoneService"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mForegroundCallState : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bluetoothCallState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1154
    if-nez v4, :cond_b

    iget v8, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    const/4 v10, 0x4

    if-ne v8, v10, :cond_b

    .line 1156
    const-string v0, "BluetoothPhoneService"

    const-string v1, "VoIP Call is ACTIVE. Send +CIEV 7,2, +CIEV:2,1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1092
    :cond_9
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1093
    const-string v1, "BluetoothPhoneService"

    const-string v2, "updateHeadsetWithCallState! change phoneId to 0 %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1095
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    .line 1096
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v2

    goto/16 :goto_5

    .line 1098
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 1159
    :cond_b
    const/4 v8, 0x1

    if-ne v9, v8, :cond_c

    const/4 v8, 0x5

    if-ne v3, v8, :cond_c

    .line 1161
    const-string v0, "BluetoothPhoneService"

    const-string v1, "VoIP Call is HOLDING. +CIEV:7,1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1164
    :cond_c
    const/4 v8, 0x1

    if-ne v9, v8, :cond_d

    const/4 v8, 0x7

    if-eq v3, v8, :cond_f

    :cond_d
    const/4 v8, 0x1

    if-ne v9, v8, :cond_e

    iget v8, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    const/4 v10, 0x6

    if-eq v8, v10, :cond_f

    :cond_e
    if-nez v4, :cond_10

    if-nez v3, :cond_10

    .line 1167
    :cond_f
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Resuming VoIP Call. Do not Send CIEV 1,0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1169
    :cond_10
    const/4 v4, 0x1

    if-ne v9, v4, :cond_11

    if-nez v3, :cond_11

    .line 1171
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Reject incomming CS Call. Send CIEV 2,0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 1174
    :cond_11
    const/4 v4, 0x1

    if-ne v9, v4, :cond_12

    const/16 v4, 0x9

    if-ne v3, v4, :cond_12

    .line 1176
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Disconnecting CS Call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1185
    :cond_12
    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-eq v3, v7, :cond_14

    const/4 v3, 0x3

    if-ne v7, v3, :cond_14

    const/4 v3, 0x1

    .line 1188
    :goto_8
    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    .line 1189
    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    .line 1190
    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    .line 1191
    iput v7, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    .line 1192
    iput-object v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    .line 1193
    iput v6, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    .line 1195
    if-eqz v3, :cond_13

    .line 1197
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Sending dialing state"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState numActive %s, numHeld %s, callState %s, ringing number %s, ringing type %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 1219
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Send fake +CLCC for CDMA if UconnectClccCarkit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/BluetoothPhoneService;->mLastIndex:I

    .line 1221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V

    .line 1225
    :cond_13
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState numActive %s, numHeld %s, callState %s, ringing number %s, ringing type %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    .line 1244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    goto/16 :goto_0

    .line 1185
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_15
    move-object v2, v1

    goto/16 :goto_5

    :cond_16
    move v0, v4

    goto/16 :goto_7

    :cond_17
    move-object v5, v2

    goto/16 :goto_3

    :cond_18
    move v6, v4

    move-object v2, v5

    goto/16 :goto_2

    :cond_19
    move v6, v4

    move-object v2, v5

    goto/16 :goto_2

    :cond_1a
    move v7, v4

    goto/16 :goto_1
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 650
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Binding service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 656
    const-string v0, "BluetoothPhoneService"

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    new-instance v0, Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {v0}, Lcom/android/server/telecom/BluetoothVoIPService;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mVoipService:Lcom/android/server/telecom/BluetoothVoIPService;

    .line 661
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 662
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 663
    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService shutting down, no BT Adapter found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 671
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    .line 672
    invoke-direct {p0, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    .prologue
    .line 677
    const-string v0, "BluetoothPhoneService"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    .line 679
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 680
    return-void
.end method
