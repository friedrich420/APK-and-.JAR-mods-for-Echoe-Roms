.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z


# instance fields
.field private mAuthRetry:Z

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private final mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceBusy:Ljava/lang/Boolean;

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTransport:I

.field private mUsePubilicAddr:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iGatt"    # Landroid/bluetooth/IBluetoothGatt;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "transport"    # I

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, mAuthRetry:Z

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mStateLock:Ljava/lang/Object;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 135
    new-instance v0, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v0, p0, mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    .line 631
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 632
    iput-object p2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    .line 633
    iput-object p3, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 634
    iput p4, p0, mTransport:I

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mServices:Ljava/util/List;

    .line 637
    iput v1, p0, mConnState:I

    .line 638
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget v0, p0, mClientIf:I

    return v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothGatt;I)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, mClientIf:I

    return p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-boolean v0, p0, mAuthRetry:Z

    return v0
.end method

.method static synthetic access$1102(Landroid/bluetooth/BluetoothGatt;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, mAuthRetry:Z

    return p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Landroid/bluetooth/BluetoothGatt;I)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, mConnState:I

    return p1
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-boolean v0, p0, mAutoConnect:Z

    return v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget v0, p0, mTransport:I

    return v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-boolean v0, p0, mUsePubilicAddr:Z

    return v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 39
    iget-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$902(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 39
    iput-object p1, p0, mDeviceBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z
    .registers 8
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v2, 0x0

    .line 684
    const-string v3, "BluetoothGatt"

    const-string/jumbo v4, "registerApp()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v3, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_e

    .line 698
    :goto_d
    return v2

    .line 687
    :cond_e
    iput-object p1, p0, mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 688
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 689
    .local v1, "uuid":Ljava/util/UUID;
    const-string v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerApp() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_2d
    iget-object v3, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v3, v4, v5}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3b

    .line 698
    const/4 v2, 0x1

    goto :goto_d

    .line 693
    :catch_3b
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private unregisterApp()V
    .registers 5

    .prologue
    .line 705
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp() - mClientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_23

    iget v1, p0, mClientIf:I

    if-nez v1, :cond_24

    .line 715
    :cond_23
    :goto_23
    return-void

    .line 709
    :cond_24
    const/4 v1, 0x0

    :try_start_25
    iput-object v1, p0, mCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 710
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 711
    const/4 v1, 0x0

    iput v1, p0, mClientIf:I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_23

    .line 712
    :catch_32
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method


# virtual methods
.method public abortReliableWrite()V
    .registers 6

    .prologue
    .line 1172
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_8

    iget v1, p0, mClientIf:I

    if-nez v1, :cond_9

    .line 1179
    :cond_8
    :goto_8
    return-void

    .line 1175
    :cond_9
    :try_start_9
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, mClientIf:I

    iget-object v3, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_8

    .line 1176
    :catch_18
    move-exception v0

    .line 1177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "mDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1185
    invoke-virtual {p0}, abortReliableWrite()V

    .line 1186
    return-void
.end method

.method public beginReliableWrite()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1117
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_9

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_a

    .line 1126
    :cond_9
    :goto_9
    return v1

    .line 1120
    :cond_a
    :try_start_a
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_19

    .line 1126
    const/4 v1, 0x1

    goto :goto_9

    .line 1121
    :catch_19
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public close()V
    .registers 3

    .prologue
    .line 647
    const-string v0, "BluetoothGatt"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0}, unregisterApp()V

    .line 650
    const/4 v0, 0x4

    iput v0, p0, mConnState:I

    .line 651
    return-void
.end method

.method public connect()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 816
    :try_start_1
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    iget-object v2, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, mTransport:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    .line 818
    const/4 v0, 0x1

    .line 821
    :goto_14
    return v0

    .line 819
    :catch_15
    move-exception v7

    .line 820
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    .line 821
    goto :goto_14
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;)Z
    .registers 8
    .param p1, "autoConnect"    # Ljava/lang/Boolean;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 741
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", auto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v2, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 743
    :try_start_2d
    iget v3, p0, mConnState:I

    if-eqz v3, :cond_3c

    .line 744
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not idle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :catchall_39
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v0

    .line 746
    :cond_3c
    const/4 v3, 0x1

    :try_start_3d
    iput v3, p0, mConnState:I

    .line 747
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_39

    .line 749
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, mAutoConnect:Z

    .line 751
    iput-boolean v0, p0, mUsePubilicAddr:Z

    .line 752
    invoke-direct {p0, p2}, registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 753
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    const/4 v2, 0x0

    :try_start_52
    iput v2, p0, mConnState:I

    .line 755
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5d

    .line 756
    const-string v1, "BluetoothGatt"

    const-string v2, "Failed to register callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_5c
    return v0

    .line 755
    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0

    .line 761
    :cond_60
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, mAutoConnect:Z

    move v0, v1

    .line 762
    goto :goto_5c
.end method

.method connectUsePublicAddr(Landroid/bluetooth/BluetoothGattCallback;)Z
    .registers 7
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 766
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectUsePublicAddr() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v2, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 769
    :try_start_23
    iget v3, p0, mConnState:I

    if-eqz v3, :cond_32

    .line 770
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not idle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v0

    .line 772
    :cond_32
    const/4 v3, 0x1

    :try_start_33
    iput v3, p0, mConnState:I

    .line 773
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_2f

    .line 775
    iput-boolean v1, p0, mAutoConnect:Z

    .line 776
    iput-boolean v1, p0, mUsePubilicAddr:Z

    .line 778
    invoke-direct {p0, p1}, registerApp(Landroid/bluetooth/BluetoothGattCallback;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 779
    iget-object v1, p0, mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    const/4 v2, 0x0

    :try_start_44
    iput v2, p0, mConnState:I

    .line 781
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 782
    const-string v1, "BluetoothGatt"

    const-string v2, "Failed to register callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_4e
    return v0

    .line 781
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    move v0, v1

    .line 785
    goto :goto_4e
.end method

.method public disconnect()V
    .registers 5

    .prologue
    .line 795
    const-string v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelOpen() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_26

    iget v1, p0, mClientIf:I

    if-nez v1, :cond_27

    .line 803
    :cond_26
    :goto_26
    return-void

    .line 799
    :cond_27
    :try_start_27
    iget-object v1, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, mClientIf:I

    iget-object v3, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35

    goto :goto_26

    .line 800
    :catch_35
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method public discoverServices()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 848
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverServices() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_27

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_28

    .line 860
    :cond_27
    :goto_27
    return v1

    .line 851
    :cond_28
    iget-object v2, p0, mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 854
    :try_start_2d
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3a} :catch_3c

    .line 860
    const/4 v1, 0x1

    goto :goto_27

    .line 855
    :catch_3c
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public executeReliableWrite()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1144
    iget-object v3, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_a

    iget v3, p0, mClientIf:I

    if-nez v3, :cond_b

    .line 1159
    :cond_a
    :goto_a
    return v1

    .line 1146
    :cond_b
    iget-object v3, p0, mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v3

    .line 1147
    :try_start_e
    iget-object v4, p0, mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1b

    monitor-exit v3

    goto :goto_a

    .line 1149
    :catchall_18
    move-exception v1

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1

    .line 1148
    :cond_1b
    const/4 v4, 0x1

    :try_start_1c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 1149
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_18

    .line 1152
    :try_start_23
    iget-object v3, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, mClientIf:I

    iget-object v5, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_33

    move v1, v2

    .line 1159
    goto :goto_a

    .line 1153
    :catch_33
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, mDeviceBusy:Ljava/lang/Boolean;

    goto :goto_a
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1382
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .registers 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "instanceId"    # I
    .param p4, "type"    # I

    .prologue
    .line 659
    iget-object v2, p0, mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 660
    .local v1, "svc":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p4, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 667
    .end local v1    # "svc":Landroid/bluetooth/BluetoothGattService;
    :goto_32
    return-object v1

    :cond_33
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 6
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 904
    iget-object v2, p0, mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 905
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 911
    .end local v1    # "service":Landroid/bluetooth/BluetoothGattService;
    :goto_28
    return-object v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public getServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v3, p0, mServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 879
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 880
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 884
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_27
    return-object v1
.end method

.method public monitorRssi(III)Z
    .registers 12
    .param p1, "lowRssi"    # I
    .param p2, "midRssi"    # I
    .param p3, "highRssi"    # I

    .prologue
    const/4 v7, 0x0

    .line 1288
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitorRssi() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_28

    iget v0, p0, mClientIf:I

    if-nez v0, :cond_2a

    :cond_28
    move v0, v7

    .line 1299
    :goto_29
    return v0

    .line 1292
    :cond_2a
    :try_start_2a
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    iget-object v2, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    int-to-byte v3, p1

    int-to-byte v4, p2

    int-to-byte v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->monitorRssi(ILjava/lang/String;III)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_3c

    .line 1299
    const/4 v0, 0x1

    goto :goto_29

    .line 1294
    :catch_3c
    move-exception v6

    .line 1295
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v7

    .line 1296
    goto :goto_29
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 16
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 927
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    move v0, v12

    .line 955
    :goto_b
    return v0

    .line 931
    :cond_c
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_14

    iget v0, p0, mClientIf:I

    if-nez v0, :cond_16

    :cond_14
    move v0, v12

    goto :goto_b

    .line 933
    :cond_16
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 934
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_1e

    move v0, v12

    goto :goto_b

    .line 936
    :cond_1e
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 937
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_26

    move v0, v12

    goto :goto_b

    .line 939
    :cond_26
    iget-object v1, p0, mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 940
    :try_start_29
    iget-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    monitor-exit v1

    move v0, v12

    goto :goto_b

    .line 941
    :cond_34
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 942
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_68

    .line 945
    :try_start_3c
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_66} :catch_6b

    move v0, v13

    .line 955
    goto :goto_b

    .line 942
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v0

    .line 949
    :catch_6b
    move-exception v10

    .line 950
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    move v0, v12

    .line 952
    goto :goto_b
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 17
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 1019
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_8

    iget v0, p0, mClientIf:I

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 1047
    :goto_9
    return v0

    .line 1021
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v11

    .line 1022
    .local v11, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v11, :cond_12

    const/4 v0, 0x0

    goto :goto_9

    .line 1024
    :cond_12
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v14

    .line 1025
    .local v14, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v14, :cond_1a

    const/4 v0, 0x0

    goto :goto_9

    .line 1027
    :cond_1a
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 1028
    .local v12, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v12, :cond_22

    const/4 v0, 0x0

    goto :goto_9

    .line 1030
    :cond_22
    iget-object v1, p0, mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1031
    :try_start_25
    iget-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_9

    .line 1033
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v0

    .line 1032
    :cond_33
    const/4 v0, 0x1

    :try_start_34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 1033
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_30

    .line 1036
    :try_start_3b
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v8

    new-instance v9, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_72} :catch_74

    .line 1047
    const/4 v0, 0x1

    goto :goto_9

    .line 1041
    :catch_74
    move-exception v13

    .line 1042
    .local v13, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 1044
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public readRemoteRssi()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1258
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readRssi() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_28

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_29

    .line 1268
    :cond_28
    :goto_28
    return v1

    .line 1262
    :cond_29
    :try_start_29
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_38

    .line 1268
    const/4 v1, 0x1

    goto :goto_28

    .line 1263
    :catch_38
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public refresh()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1234
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_28

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_29

    .line 1244
    :cond_28
    :goto_28
    return v1

    .line 1238
    :cond_29
    :try_start_29
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_38

    .line 1244
    const/4 v1, 0x1

    goto :goto_28

    .line 1239
    :catch_38
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public requestConnectionPriority(I)Z
    .registers 7
    .param p1, "connectionPriority"    # I

    .prologue
    const/4 v1, 0x0

    .line 1345
    if-ltz p1, :cond_6

    const/4 v2, 0x2

    if-le p1, v2, :cond_e

    .line 1347
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectionPriority not within valid range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1350
    :cond_e
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestConnectionPriority() - params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_2f

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_30

    .line 1360
    :cond_2f
    :goto_2f
    return v1

    .line 1354
    :cond_30
    :try_start_30
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3d} :catch_3f

    .line 1360
    const/4 v1, 0x1

    goto :goto_2f

    .line 1355
    :catch_3f
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public requestMtu(I)Z
    .registers 7
    .param p1, "mtu"    # I

    .prologue
    const/4 v1, 0x0

    .line 1317
    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureMTU() - device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mtu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_31

    iget v2, p0, mClientIf:I

    if-nez v2, :cond_32

    .line 1328
    :cond_31
    :goto_31
    return v1

    .line 1322
    :cond_32
    :try_start_32
    iget-object v2, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, mClientIf:I

    iget-object v4, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3f} :catch_41

    .line 1328
    const/4 v1, 0x1

    goto :goto_31

    .line 1323
    :catch_41
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 16
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enable"    # Z

    .prologue
    const/4 v12, 0x0

    .line 1204
    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_30

    iget v0, p0, mClientIf:I

    if-nez v0, :cond_32

    :cond_30
    move v0, v12

    .line 1225
    :goto_31
    return v0

    .line 1208
    :cond_32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 1209
    .local v11, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v11, :cond_3a

    move v0, v12

    goto :goto_31

    .line 1211
    :cond_3a
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 1212
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_42

    move v0, v12

    goto :goto_31

    .line 1215
    :cond_42
    :try_start_42
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move v8, p2

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_6c} :catch_6e

    .line 1225
    const/4 v0, 0x1

    goto :goto_31

    .line 1220
    :catch_6e
    move-exception v10

    .line 1221
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v12

    .line 1222
    goto :goto_31
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 16
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 971
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    .line 973
    const/4 v0, 0x0

    .line 1002
    :goto_11
    return v0

    .line 976
    :cond_12
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1a

    iget v0, p0, mClientIf:I

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    .line 978
    :cond_1c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v13

    .line 979
    .local v13, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v13, :cond_24

    const/4 v0, 0x0

    goto :goto_11

    .line 981
    :cond_24
    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 982
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v11, :cond_2c

    const/4 v0, 0x0

    goto :goto_11

    .line 984
    :cond_2c
    iget-object v1, p0, mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    .line 985
    :try_start_2f
    iget-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_11

    .line 987
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw v0

    .line 986
    :cond_3d
    const/4 v0, 0x1

    :try_start_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 987
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3a

    .line 990
    :try_start_45
    iget-object v0, p0, mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, mClientIf:I

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v3

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    invoke-interface/range {v0 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_77} :catch_79

    .line 1002
    const/4 v0, 0x1

    goto :goto_11

    .line 996
    :catch_79
    move-exception v12

    .line 997
    .local v12, "e":Landroid/os/RemoteException;
    const-string v0, "BluetoothGatt"

    const-string v1, ""

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 998
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, mDeviceBusy:Ljava/lang/Boolean;

    .line 999
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 20
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, mClientIf:I

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    .line 1092
    :goto_d
    return v1

    .line 1065
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v14

    .line 1066
    .local v14, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v14, :cond_16

    const/4 v1, 0x0

    goto :goto_d

    .line 1068
    :cond_16
    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v17

    .line 1069
    .local v17, "service":Landroid/bluetooth/BluetoothGattService;
    if-nez v17, :cond_1e

    const/4 v1, 0x0

    goto :goto_d

    .line 1071
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    .line 1072
    .local v15, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v15, :cond_26

    const/4 v1, 0x0

    goto :goto_d

    .line 1074
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v2

    .line 1075
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v1, v0, mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_d

    .line 1077
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1

    .line 1076
    :cond_3b
    const/4 v1, 0x1

    :try_start_3c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mDeviceBusy:Ljava/lang/Boolean;

    .line 1077
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_38

    .line 1080
    :try_start_45
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Landroid/bluetooth/IBluetoothGatt;

    move-object/from16 v0, p0

    iget v2, v0, mClientIf:I

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v5

    new-instance v6, Landroid/os/ParcelUuid;

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v7

    new-instance v8, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v9

    new-instance v10, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v13

    invoke-interface/range {v1 .. v13}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;II[B)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_88} :catch_8a

    .line 1092
    const/4 v1, 0x1

    goto :goto_d

    .line 1086
    :catch_8a
    move-exception v16

    .line 1087
    .local v16, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothGatt"

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1088
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, mDeviceBusy:Ljava/lang/Boolean;

    .line 1089
    const/4 v1, 0x0

    goto/16 :goto_d
.end method
